.class public Lcom/mojang/minecraftpe/input/InputDeviceManager$DefaultDeviceManager;
.super Lcom/mojang/minecraftpe/input/InputDeviceManager;
.source "InputDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/input/InputDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultDeviceManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mojang/minecraftpe/input/InputDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mojang/minecraftpe/input/InputDeviceManager$1;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/mojang/minecraftpe/input/InputDeviceManager$DefaultDeviceManager;-><init>()V

    return-void
.end method


# virtual methods
.method public register()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "MCPE"

    const-string v1, "INPUT Noop register device manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "MCPE"

    const-string v1, "INPUT Noop unregister device manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method
