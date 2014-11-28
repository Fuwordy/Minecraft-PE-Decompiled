.class Lcom/mojang/minecraftpe/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->hideKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$7;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$7;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$7;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 274
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$7;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mojang/minecraftpe/MainActivity;->mHiddenTextInputDialog:Landroid/widget/PopupWindow;

    .line 276
    :cond_0
    return-void
.end method
