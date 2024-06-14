static void Main()
{
    const int MAX = 100;
    Console.Write("Enter the number of elements (1-100): ");
    if (!int.TryParse(Console.ReadLine(), out var n) || n < 1 || n > MAX)
    {
        Console.WriteLine("Invalid input. Please provide a digit ranging from 1 to 100.");
        Environment.Exit(1);
    }

    var arr = new int[n];

    if (n == 1)
    {
        Console.WriteLine("Enter 1 integer:");
    }
    else
    {
        Console.WriteLine($"Enter {n} integers:");
    }

    for (var i = 0; i < n; i++)
    {
        if (!int.TryParse(Console.ReadLine(), out arr[i]))
        {
            Console.WriteLine("Invalid input. Please enter valid integers.");
            Environment.Exit(1);
        }
    }

    var total = arr.Sum();

    Console.WriteLine($"Sum of the numbers: {total}");
}