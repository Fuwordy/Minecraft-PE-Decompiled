.class public Lcom/mojang/minecraftpe/Minecraft_Market_Demo;
.super Lcom/mojang/minecraftpe/MainActivity;
.source "Minecraft_Market_Demo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public buyGame()V
    .locals 3

    .prologue
    .line 9
    const-string v2, "market://details?id=com.mojang.minecraftpe"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 10
    .local v0, "buyLink":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11
    .local v1, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/Minecraft_Market_Demo;->startActivity(Landroid/content/Intent;)V

    .line 12
    return-void
.end method

.method protected isDemo()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
