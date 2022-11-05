.class public Lcom/mobsandgeeks/saripaar/rule/CreditCardRule;
.super Lcom/mobsandgeeks/saripaar/AnnotationRule;
.source "CreditCardRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mobsandgeeks/saripaar/AnnotationRule",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/CreditCard;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CARD_TYPE_REGISTRY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule$1;

    invoke-direct {v0}, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule$1;-><init>()V

    sput-object v0, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule;->CARD_TYPE_REGISTRY:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/mobsandgeeks/saripaar/annotation/CreditCard;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/AnnotationRule;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule;->mRuleAnnotation:Ljava/lang/annotation/Annotation;

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard;

    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/CreditCard;->cardTypes()[Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 51
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;->NONE:Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/CreditCard$Type;

    .line 53
    sget-object v1, Lcom/mobsandgeeks/saripaar/rule/CreditCardRule;->CARD_TYPE_REGISTRY:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 54
    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lcommons/validator/routines/CreditCardValidator;

    invoke-direct {v0, v2, v3}, Lcommons/validator/routines/CreditCardValidator;-><init>(J)V

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcommons/validator/routines/CreditCardValidator;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
