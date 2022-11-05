.class public Lcom/mobsandgeeks/saripaar/adapter/RadioButtonBooleanAdapter;
.super Ljava/lang/Object;
.source "RadioButtonBooleanAdapter.java"

# interfaces
.implements Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter",
        "<",
        "Landroid/widget/RadioButton;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Landroid/widget/RadioButton;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    .line 25
    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/adapter/RadioButtonBooleanAdapter;->getData(Landroid/widget/RadioButton;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
