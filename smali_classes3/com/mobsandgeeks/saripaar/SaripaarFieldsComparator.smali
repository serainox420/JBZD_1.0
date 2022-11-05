.class final Lcom/mobsandgeeks/saripaar/SaripaarFieldsComparator;
.super Ljava/lang/Object;
.source "SaripaarFieldsComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field private mOrderedFields:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobsandgeeks/saripaar/SaripaarFieldsComparator;->mOrderedFields:Z

    return-void
.end method


# virtual methods
.method public areOrderedFields()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/mobsandgeeks/saripaar/SaripaarFieldsComparator;->mOrderedFields:Z

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Ljava/lang/reflect/Field;

    check-cast p2, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Lcom/mobsandgeeks/saripaar/SaripaarFieldsComparator;->compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    const-class v0, Lcom/mobsandgeeks/saripaar/annotation/Order;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/Order;

    .line 38
    const-class v1, Lcom/mobsandgeeks/saripaar/annotation/Order;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/mobsandgeeks/saripaar/annotation/Order;

    .line 41
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 42
    :cond_0
    iput-boolean v2, p0, Lcom/mobsandgeeks/saripaar/SaripaarFieldsComparator;->mOrderedFields:Z

    move v0, v2

    .line 52
    :goto_0
    return v0

    .line 45
    :cond_1
    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/Order;->value()I

    move-result v0

    .line 46
    invoke-interface {v1}, Lcom/mobsandgeeks/saripaar/annotation/Order;->value()I

    move-result v1

    .line 48
    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method
