.class public Lcom/mojang/android/TextViewReader;
.super Ljava/lang/Object;
.source "TextViewReader.java"

# interfaces
.implements Lcom/mojang/android/StringValue;


# instance fields
.field private _view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/mojang/android/TextViewReader;->_view:Landroid/widget/TextView;

    .line 8
    return-void
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/mojang/android/TextViewReader;->_view:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
