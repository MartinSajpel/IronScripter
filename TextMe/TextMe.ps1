function Convert-TextToDial{
    param(
        [ValidatePattern('^[a-zA-Z]{1,5}$')]
        [Parameter(Mandatory=$true)]
        [string]$Word
    )
    for($i=0;$i -lt $Word.Length;$i++)
    {
        switch -Regex ($Word[$i])
        {
            '[a-cA-C]'{$finalResult += '2'}
            '[d-fD-F]'{$finalResult += '3'}
            '[g-iG-I]'{$finalResult += '4'}
            '[j-lJ-L]'{$finalResult += '5'}
            '[m-oM-O]'{$finalResult += '6'}
            '[p-sP-S]'{$finalResult += '7'}
            '[t-vT-V]'{$finalResult += '8'}
            '[w-zW-Z]'{$finalResult += '9'}
        }
    }
    return $finalResult
}
Convert-TextToDial -Word help
