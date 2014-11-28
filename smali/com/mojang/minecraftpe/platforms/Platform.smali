.class public abstract Lcom/mojang/minecraftpe/platforms/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlatform()Lcom/mojang/minecraftpe/platforms/Platform;
    .locals 2

    .prologue
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 10
    new-instance v0, Lcom/mojang/minecraftpe/platforms/Platform44;

    invoke-direct {v0}, Lcom/mojang/minecraftpe/platforms/Platform44;-><init>()V

    .line 12
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mojang/minecraftpe/platforms/Platform23;

    invoke-direct {v0}, Lcom/mojang/minecraftpe/platforms/Platform23;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public abstract onAppStart(Landroid/view/View;)V
.end method

.method public abstract onViewFocusChanged(Z)V
.end method

.method public abstract onVolumePressed()V
.end method
