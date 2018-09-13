class Actions
  
  def clickOnButton(id)
    $driver.find_element(id: id).click
  end

  def clickOnElementByIndex(id,index)
    $driver.find_elements(:id, id)[index].click
  end

  def waitAndClickOnButton(id)
    $driver.wait { $driver.find_element(id: id).click}
  end

  def waitElement(id)
    $driver.wait { $driver.find_element(id: id)}
  end

  def waitElementByXpath(xpath)
    $driver.wait { $driver.find_element(xpath: xpath)}
  end

  def waitElementAndClick(id)
    $driver.wait { $driver.find_element(id: id).click}
  end

  def sendKey(id,text)
   $driver.find_element(id: id).send_key(text)
  end

  def waitAndSendKey(id,text)
    $driver.wait { $driver.find_element(id: id).send_key(text)}
  end

  def getText(id)
    $driver.find_element(id: id).text
  end
  
  def keyEvent(element)
    $driver.press_keycode(element)
  end

  def android_location_on
    system("adb shell settings put secure location_providers_allowed +network")
    system("adb shell settings put secure location_providers_allowed +gps")
  end  

  def get_conection_status
    $driver.get_network_connection
  end

end
