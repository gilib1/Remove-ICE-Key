Function Check-Ice
{
    Try
        {
            #Checks if ICE regkey exists
            $ice = get-item -path HKLM:\HKEY_LOCAL_MACHINE\SOFTWARE\Rackspace\ICE -ErrorAction SilentlyContinue

            if ($ice)
                { 
                    #Remove ICE regkey if exists 
                    remove-item -path HKLM:\HKEY_LOCAL_MACHINE\SOFTWARE\Rackspace\ICE -ErrorAction SilentlyContinue $IceCheck = "Key deleted" 
                }

            else
                {
                    #If ICE registry key did not exist or present  
                    $IceCheck = "Key not present" 
                }

            return $IceCheck
         }
    Catch
        { 
            Return "Unexpected Error" 
        }

}
