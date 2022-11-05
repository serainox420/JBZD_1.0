.class public Lcom/mobsandgeeks/saripaar/adapter/TextViewStringAdapter;
.super Ljava/lang/Object;
.source "TextViewStringAdapter.java"

# interfaces
.implements Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter",
        "<",
        "Landroid/widget/TextView;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getData(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobsandgeeks/saripaar/exception/ConversionException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/adapter/TextViewStringAdapter;->getData(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
