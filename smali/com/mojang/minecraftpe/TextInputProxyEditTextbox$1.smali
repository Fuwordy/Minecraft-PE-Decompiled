.class Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$1;
.super Ljava/lang/Object;
.source "TextInputProxyEditTextbox.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;-><init>(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$1;->this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 49
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    .end local p1    # "source":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 52
    .restart local p1    # "source":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[a-zA-Z0-9_ -^~\'.,;!#&()=`{}]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const-string p1, ""

    goto :goto_0
.end method
