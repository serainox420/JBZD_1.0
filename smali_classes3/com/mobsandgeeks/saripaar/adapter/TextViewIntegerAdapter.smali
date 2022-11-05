.class public Lcom/mobsandgeeks/saripaar/adapter/TextViewIntegerAdapter;
.super Ljava/lang/Object;
.source "TextViewIntegerAdapter.java"

# interfaces
.implements Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter",
        "<",
        "Landroid/widget/TextView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGEX_INTEGER:Ljava/lang/String; = "\\d+"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Landroid/widget/TextView;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobsandgeeks/saripaar/exception/ConversionException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string v1, "Expected an integer, but was %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/mobsandgeeks/saripaar/exception/ConversionException;

    invoke-direct {v1, v0}, Lcom/mobsandgeeks/saripaar/exception/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getData(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobsandgeeks/saripaar/exception/ConversionException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/adapter/TextViewIntegerAdapter;->getData(Landroid/widget/TextView;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
