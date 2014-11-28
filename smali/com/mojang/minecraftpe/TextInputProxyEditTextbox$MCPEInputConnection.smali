.class Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "TextInputProxyEditTextbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MCPEInputConnection"
.end annotation


# instance fields
.field textbox:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

.field final synthetic this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Landroid/view/inputmethod/InputConnection;ZLcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V
    .locals 0
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "mutable"    # Z
    .param p4, "textbox"    # Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;->this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    .line 90
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 91
    iput-object p4, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;->textbox:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    .line 92
    return-void
.end method


# virtual methods
.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;->textbox:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;->this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    # getter for: Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;
    invoke-static {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->access$000(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;->this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    # getter for: Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;
    invoke-static {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->access$000(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;->onDeleteKeyPressed()V

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
