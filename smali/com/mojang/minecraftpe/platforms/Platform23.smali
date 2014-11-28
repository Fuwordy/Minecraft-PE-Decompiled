.class public Lcom/mojang/minecraftpe/platforms/Platform23;
.super Lcom/mojang/minecraftpe/platforms/Platform;
.source "Platform23.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mojang/minecraftpe/platforms/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStart(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9
    return-void
.end method

.method public onViewFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 11
    return-void
.end method

.method public onVolumePressed()V
    .locals 0

    .prologue
    .line 7
    return-void
.end method
