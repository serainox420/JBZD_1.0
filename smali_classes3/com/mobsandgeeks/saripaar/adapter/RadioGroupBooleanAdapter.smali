.class public Lcom/mobsandgeeks/saripaar/adapter/RadioGroupBooleanAdapter;
.super Ljava/lang/Object;
.source "RadioGroupBooleanAdapter.java"

# interfaces
.implements Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter",
        "<",
        "Landroid/widget/RadioGroup;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData(Landroid/widget/RadioGroup;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobsandgeeks/saripaar/exception/ConversionException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getData(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobsandgeeks/saripaar/exception/ConversionException;
        }
    .end annotation

    .prologue
    .line 29
    check-cast p1, Landroid/widget/RadioGroup;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/adapter/RadioGroupBooleanAdapter;->getData(Landroid/widget/RadioGroup;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
