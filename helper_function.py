import time
import pyperclip
import pyautogui
import unittest


l1 =['lol\n', 'lol\n', 'lol\n', 'lol\n', 'lol\n']
l2 = ['1\n', '2\n', '3\n', '4\n', '5\n']
l3 = ['1,1\n', '1,2\n', '1,3\n', '1,4\n', '1,5\n']

def capture(n=25): 
   res = [] 
   # time.sleep(1.5)
   for k in range(n): 
      pyautogui.hotkey('ctrl','c')
      res.append(pyperclip.paste()) 
      pyautogui.press("down") 
   return res

"""doesnt work for number"""
def release(_list):
   # time.sleep(1.5) 
   for k in _list:
      if k:
         k = k.replace("\n","")
         pyautogui.typewrite(k)
      pyautogui.press("enter")

def paste_release(_list,direction="down"):
   pyperclip.copy("")
   # time.sleep(1.5) 
   for k in _list:
      if type(k) != type(""): k = str(k)
      k = k.replace("\n","")
      pyperclip.copy(k)
      pyautogui.hotkey('ctrl','v')
      # time.sleep(0.1)
      pyautogui.press(direction)
      # time.sleep(0.2)


def release_as_number_press(_list,enter=True):
   # time.sleep(1.5)
   # pyautogui.PAUSE
   for k in _list:
      k = calc_str_to_float(k)
      k = str(k)
      for char in k:
         if char in '0123456789':
            char = "num"+char
            pyautogui.press(char)
         else:
            pyautogui.press(",")
      if enter: pyautogui.press("enter")



def map_release(_list,func=lambda x:str(x)):
   release(map(func,_list))


def _test_release():
   for k in [l1,l2,l3]:
      time.sleep(1)
      release(k)
      pyautogui.press("enter")
      pyautogui.press("enter")
      paste_release(k)

def _test_as_np():
   l2 = ['1\n', '2\n', '3\n', '4\n', '5\n']
   release_as_number_press(l2)

def _test_paste_release():
   for k in (l1,l2,l3):
      paste_release(k)



def macro_map_colonne(lamb=lambda x:str(x),size=5):
   l = capture(size)
   l.reverse()
   pyautogui.press("right")
   pyautogui.press("up")
   pyautogui.press("esc")
   paste_release(map(lamb,l),"up")
   # for k in range(size):
   #    pyautogui.press("up") 
       
   # paste_release(map(lamb,l))

def calc_str_to_float(s):
   if not s:
      return
   s = s.replace(",",".")
   s = s.lstrip("/") 
   s = s.rstrip("/") 
   try:
      return float(s)
   except:
      return ""

def delimiters2mastery(max_note):
   size = max_note/3 
   delimiters2mastery = {  
                        size/2 + size * (mastery-1): mastery for mastery in range(1,5)
                        } #delim to mastery  corresponding
   return delimiters2mastery

"""split the range(0,maxnote) into four parts, returning the mastery corresponding to the note rounded up"""


def macro_note2mastery(max_note):
   def note2mastery(s):
      try:
         note = calc_str_to_float(s)
      except:
         return "NO_INPUT"
      if not s: return "NO_INPUT"
      d2master = delimiters2mastery(max_note)
      for delim in d2master.keys():
         if note < delim:
            return d2master[delim]
   return note2mastery

"""mastery level is input except no mastery is input:0"""
def macro_mastery_to_input(data):
   if not data or "NO_INPUT" in data:
      return str(0)
   else:
      return str(data)


def macro_note_to_input(max_note):
   def macro_note_to_input():
      return macro_mastery_to_input(macro_note2mastery(max_note))


def EN_notes2mastery_and_input(size=25):
   #commence sur la case note avec deux colonnes libres à côté
   time.sleep(1.5)
   max_note = capture(1)[0]
   max_note = calc_str_to_float(max_note)

   pyautogui.press("up")
   pyautogui.press("right")
   pyautogui.press("esc")
   paste_release(["mastery","input"],"right")
   pyautogui.press("left")
   pyautogui.press("left")
   # time.sleep(0.1)
   pyautogui.press("left")
   pyautogui.press("down")
   macro_map_colonne(lamb=macro_note2mastery(max_note),size=size)
   pyautogui.press("down")
   macro_map_colonne(lamb=macro_mastery_to_input,size=size)


"""

TODO: should get the size by himself!
"""
def EN_input_to_output(size=25):
   time.sleep(1.5)
   title = capture(1)[0]
   inputs = capture(size)
   pyautogui.confirm('Printing: {}.\nShall I proceed?'.format(title))
   time.sleep(1.5)
   release_as_number_press(inputs)

"""capture size notes and output by simply pressing each touch, useful for str as ints"""
def EN_input_to_simple_press_output(size):
   time.sleep(1.5)
   title = capture(1)[0]
   inputs = capture(size)
   pyautogui.confirm('Printing: {}.\nShall I proceed?'.format(title))
   time.sleep(1.5)

   inputs = list(
      map(
         lambda x:"num"+str(x) ,
         filter(
            None,
            inputs
            )
      )
   )
   pyautogui.write(inputs)


class UtilsTestCase(unittest.TestCase):  
   def test_delimiters2mastery_note4(self):
      self.assertDictEqual(
         delimiters2mastery(3),
         {
            0.5 : 1,
            1.5 : 2,
            2.5 : 3,
            3.5 : 4
         })

   def test_delimiters2masterynote_6(self):
      self.assertDictEqual(
         delimiters2mastery(6),
         {
            1 : 1,
            3 : 2,
            5 : 3,
            7 : 4
         })



class MacroTestCase(unittest.TestCase):  
   mastery3 = 3
   
   def testmacro_note2mastery_0(self):
      self.assertEqual(macro_note2mastery(self.mastery3)("0"),1) 
   def testmacro_note2mastery_1(self):
      self.assertEqual(macro_note2mastery(self.mastery3)("1"),2)  
   def testmacro_note2mastery_2(self):
      self.assertEqual(macro_note2mastery(self.mastery3)("2"),3)  
   def testmacro_note2mastery_3(self):
      self.assertEqual(macro_note2mastery(self.mastery3)("3"),4)  

   def testmacro_note2mastery_5(self):
      self.assertEqual(macro_note2mastery(self.mastery3)("0.4"),1)       
      self.assertEqual(macro_note2mastery(self.mastery3)("0.5"),2)       
   def testmacro_note2mastery_6(self):
      self.assertEqual(macro_note2mastery(self.mastery3)("1.4"),2)
      self.assertEqual(macro_note2mastery(self.mastery3)("1.5"),3)
   def testmacro_note2mastery_7(self):
      self.assertEqual(macro_note2mastery(self.mastery3)("2.4"),3)  
      self.assertEqual(macro_note2mastery(self.mastery3)("2.5"),4)  













if __name__ == "__main__":
   print("\n\n")
   print("EN_* functions are utilities\n\n")  
   print("""# EN_notes2mastery_and_input()
# EN_input_to_output()
# EN_input_to_simple_press_output((size) """)