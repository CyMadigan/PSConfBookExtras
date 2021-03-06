[CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Low')]
param(
    [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
    [ValidateNotNull()]
    [VMware.VimAutomation.ViCore.Types.V1.VM.RemoteConsoleVM[]]
    ${VM},

    [switch]
    ${FullScreen},

    [switch]
    ${UrlOnly},

    [VMware.VimAutomation.Sdk.Types.V1.VIConnection[]]
    ${Server})

begin
{
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer))
        {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand('VMware.VimAutomation.Core\Open-VMConsoleWindow', [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters }
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($myInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process
{
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end
{
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
<#

.ForwardHelpTargetName VMware.VimAutomation.Core\Open-VMConsoleWindow
.ForwardHelpCategory Cmdlet

#>

