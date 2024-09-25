using ZXing.Net.Maui;

namespace speed.Views
{
    public partial class BarcodeScannerPage : ContentPage
    {
        public BarcodeScannerPage()
        {
            InitializeComponent();
        }

        private async void OnBarcodesDetected(object sender, BarcodeDetectionEventArgs e)
        {
            await DisplayAlert("Barcodes detected", "Barcodes detected event triggered.", "OK");
            try
            {
                Console.WriteLine("Barcodes detected event triggered.");

                if (e.Results.Any())
                {
                    var barcode = e.Results.FirstOrDefault()?.Value;
                    Console.WriteLine($"Barcode detected: {barcode}");

                    if (!string.IsNullOrEmpty(barcode))
                    {
                        // Mostrar el código en una alerta
                        MainThread.BeginInvokeOnMainThread(async () =>
                        {
                            await DisplayAlert("Código Detectado", $"Código escaneado: {barcode}", "OK");
                        });
                    }
                }
                else
                {
                    Console.WriteLine("No barcodes detected.");
                    MainThread.BeginInvokeOnMainThread(async () =>
                    {
                        await DisplayAlert("No se detectó ningún código", "Inténtalo de nuevo.", "OK");
                    });
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                await DisplayAlert("Error", $"Ocurrió un error: {ex.Message}", "OK");
            }
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            barcodeReader.Options = new BarcodeReaderOptions
            {
                Formats = BarcodeFormat.Code128
            };
            if (!barcodeReader.IsDetecting)
            {
                barcodeReader.IsDetecting = true;
                Console.WriteLine("Barcode reader detection enabled.");
            }
        }
    }
}
