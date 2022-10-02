

import nextcord
from nextcord import Interaction
from nextcord.ext import commands

intents = nextcord.Intents.all()
intents.members = True
command_prefix = '/'

client = commands.Bot(command_prefix, intents = intents)

@client.event
async def on_ready():
  print('logged in as {0.user}'.format(client))
  print(command_prefix)



@nextcord.slash_command(name = "hello", description = "Bot Says Hello",)
async def hellocommand(interaction: Interaction):
  await interaction.response.send_message("yoooo")



client.run(token)




@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words1:
            if "zira’s disciples (LVL 6)" not in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f"Salut {msg.author.display_name}")
                return


@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words2:
            if "zira’s disciples (LVL 6)" not in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f" Buenos días{msg.author.display_name}")
                return


@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words3:
            if "zira’s disciples (LVL 6)" not in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f"Guten Morgen {msg.author.display_name}")
                return


@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words4:
            if "zira’s disciples (LVL 6)" not in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f"Buongiorno {msg.author.display_name}")
                return


@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words5:
            if "zira’s disciples (LVL 6)" not in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f"Wa-Alaikum-Salaam {msg.author.display_name}")
                return


@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words6:
            if "zira’s disciples (LVL 6)" not in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f"おはよう {msg.author.display_name}")
                return


@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words7:
            if "zira’s disciples (LVL 6)" not in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f"Goedemorgen {msg.author.display_name}")
                return


@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words8:
            if "zira’s disciples (LVL 6)" not in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f"Buna dimineata {msg.author.display_name}")
                return


@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words9:
            if "zira’s disciples (LVL 6)" not in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f"Bom Dia {msg.author.display_name}")
                return



@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words:
            if "zira’s blacklist" not in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f"Hellooo {msg.author.display_name}")
                
    await bot.process_commands(msg)


block_words1 = ["!bonjour"]

block_words2 = ["!hola"]

block_words3 = ["!gutentag"]

block_words4 = ["!salve"]

block_words5 = ["!asalaamalaikum"]

block_words6 = ["!konnichiwa"]

block_words7 = ["!hallo"]

block_words8 = ["!buna"]

block_words9 = ["!oi"]



@bot.listen('on_message') 
async def on_msg2(message):
    if message.author != client.user:
        for text in clonefunction:
            if "zira’s blacklist" not in str(message.author.roles) and text in str(message.content.lower()):
          
                await message.channel.send(f"Hey! {message.author.display_name} You made it on my Clonelist")
                
    #await bot.process_commands(message)
    