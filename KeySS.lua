-- keysys for RaitlHub

local ScreenGui = Instance.new("ScreenGui")
local KeyFrame = Instance.new("Frame")
local KeyTitle = Instance.new("TextLabel")
local KeyTextBox = Instance.new("TextBox")
local SubmitButton = Instance.new("TextButton")
local GetKeyButton = Instance.new("TextButton")

local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Checkbox = Instance.new("TextButton")

-- Parent GUI to PlayerGui
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

------------------ KEY SYSTEM UI ------------------

KeyFrame.Parent = ScreenGui
KeyFrame.Size = UDim2.new(0, 200, 0, 120)
KeyFrame.Position = UDim2.new(0.4, 0, 0.3, 0)
KeyFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
KeyFrame.Active = true
KeyFrame.Draggable = true

KeyTitle.Parent = KeyFrame
KeyTitle.Size = UDim2.new(1, 0, 0.2, 0)
KeyTitle.Text = "Enter Key"
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTitle.BackgroundTransparency = 1
KeyTitle.Font = Enum.Font.SourceSansBold
KeyTitle.TextSize = 18

KeyTextBox.Parent = KeyFrame
KeyTextBox.Size = UDim2.new(1, -10, 0.3, 0)
KeyTextBox.Position = UDim2.new(0, 5, 0.3, 0)
KeyTextBox.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
KeyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTextBox.PlaceholderText = "Enter key..."
KeyTextBox.Font = Enum.Font.SourceSans
KeyTextBox.TextSize = 16
KeyTextBox.ClearTextOnFocus = false

SubmitButton.Parent = KeyFrame
SubmitButton.Size = UDim2.new(1, -10, 0.2, 0)
SubmitButton.Position = UDim2.new(0, 5, 0.65, 0)
SubmitButton.Text = "Submit"
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.BackgroundColor3 = Color3.fromRGB(80, 150, 80)
SubmitButton.Font = Enum.Font.SourceSansBold
SubmitButton.TextSize = 16

GetKeyButton.Parent = KeyFrame
GetKeyButton.Size = UDim2.new(1, -10, 0.2, 0)
GetKeyButton.Position = UDim2.new(0, 5, 0.85, 0)
GetKeyButton.Text = "Get Key"
GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKeyButton.BackgroundColor3 = Color3.fromRGB(100, 100, 150)
GetKeyButton.Font = Enum.Font.SourceSansBold
GetKeyButton.TextSize = 16

local correctKey = "jdusiajansbdko9w9272"  -- Updated key

SubmitButton.MouseButton1Click:Connect(function()
    if KeyTextBox.Text == correctKey then
        KeyFrame:Destroy()  -- Remove key UI
        MainFrame.Visible = true  -- Show Auto Farm UI
        print("Key correct! UI unlocked.")
        loadstring(game:HttpGet("https://pastebin.com/raw/G198kCd2", true))() -- Load your ESP script
    else
        KeyTextBox.Text = "Wrong key!"
        wait(1)
        KeyTextBox.Text = ""
    end
end)

GetKeyButton.MouseButton1Click:Connect(function()
    setclipboard("https://workink.net/1YNI/mfokusnv")  -- Updated link
    GetKeyButton.Text = "Copied!"
    wait(1.5)
    GetKeyButton.Text = "Get Key"
end)
