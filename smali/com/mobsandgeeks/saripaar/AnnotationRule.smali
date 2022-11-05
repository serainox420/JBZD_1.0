.class public abstract Lcom/mobsandgeeks/saripaar/AnnotationRule;
.super Lcom/mobsandgeeks/saripaar/Rule;
.source "AnnotationRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RU",
        "LE_ANNOTATION::Ljava/lang/annotation/Annotation;",
        "DATA_TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mobsandgeeks/saripaar/Rule",
        "<TDATA_TYPE;>;"
    }
.end annotation


# instance fields
.field protected final mRuleAnnotation:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRU",
            "LE_ANNOTATION;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRU",
            "LE_ANNOTATION;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p1, :cond_0

    const-string v0, "sequence"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 48
    invoke-static {p1, v0, v1}, Lcom/mobsandgeeks/saripaar/Reflector;->getAttributeValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 47
    :goto_0
    invoke-direct {p0, v0}, Lcom/mobsandgeeks/saripaar/Rule;-><init>(I)V

    .line 49
    if-nez p1, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'ruleAnnotation\' cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/AnnotationRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    .line 53
    return-void
.end method


# virtual methods
.method public getMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/AnnotationRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    const-string v1, "messageResId"

    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v1, v2}, Lcom/mobsandgeeks/saripaar/Reflector;->getAttributeValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 63
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/AnnotationRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    const-string v1, "message"

    const-class v2, Ljava/lang/String;

    .line 65
    invoke-static {v0, v1, v2}, Lcom/mobsandgeeks/saripaar/Reflector;->getAttributeValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
