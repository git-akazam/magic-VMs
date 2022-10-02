import discord
import asyncio
from discord.ext import commands


token = ""

import typing

intents = discord.Intents.all()


bot = commands.Bot(command_prefix='!', intents=intents)

client = discord.Client()

block_words = ["!clonelist"]

clonefunction = ["!clone"]


@client.event
async def on_ready():
    print(f"Bot logged in as {client.user}")
    
    
@bot.event
async def on_member_update(before, after):


    member = bot.get_guild(before.guild.id).get_member(before.id)

    if len(before.roles) < len(after.roles):
        
        # The user has gained a new role, so lets find out which one
        newRole = next(role for role in after.roles if role not in before.roles)
        if str(newRole) == "CloneList":
            await member.send(f"Welcome in my CloneList. I am not a spam bot. I am the real Zira. We will be able to talk here in private or in my Discord soon🦾")
            channel = bot.get_channel(972547284497735700)
            await channel.send(f"""Welcome {member.name} in my Clonelist🧬""")




@client.event 
async def on_message(msg):
    if msg.author != client.user:
        for text in block_words:
            if "CloneList" in str(msg.author.roles) and text in str(msg.content.lower()):
          
                await msg.channel.send(f"Hey {msg.author.display_name}! Welcome my dear zClone in the Clonelist!") 
                await bot.process_commands(msg)
                

@bot.group()
async def git(ctx):
    if ctx.invoked_subcommand is None:
        await ctx.send('Invalid git command passed...')


@bot.command()
async def zira(ctx, amount: typing.Optional[int] = 99, *, hardware="hardware"):
    await ctx.send('{} virtual hardwares for you!'.format(amount, hardware))



#store leaderboards of virtual hardwares,
#random factors for pieces of robots given !zira
#proof-of-activity

#more pieces of robots they have, more odds of winning giveaways (implemented by thomas)
#random amount from 1-99, store in a leaderboard how many, maximum call 1 time per hour 



#send a message every time role is assigned (ddone)


#/talk 
#command can pass text can redirect to our chatbot and send back cutom reply






@bot.command(pass_context=True)
@commands.has_role("CloneList")
async def clonelist(ctx, user: discord.Member):
        role = discord.utils.find(lambda r: r.name == 'Member', ctx.message.server.roles)
        if role in user.roles:
            await bot.say("{} is in my Clonelist".format(user))




client.run(token)
