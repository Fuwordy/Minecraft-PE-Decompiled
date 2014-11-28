.class public abstract Lcom/mojang/minecraftpe/input/InputDeviceManager;
.super Ljava/lang/Object;
.source "InputDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/input/InputDeviceManager$1;,
        Lcom/mojang/minecraftpe/input/InputDeviceManager$DefaultDeviceManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/mojang/minecraftpe/input/InputDeviceManager;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;-><init>(Landroid/content/Context;)V

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mojang/minecraftpe/input/InputDeviceManager$DefaultDeviceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mojang/minecraftpe/input/InputDeviceManager$DefaultDeviceManager;-><init>(Lcom/mojang/minecraftpe/input/InputDeviceManager$1;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract register()V
.end method

.method public abstract unregister()V
.end method
