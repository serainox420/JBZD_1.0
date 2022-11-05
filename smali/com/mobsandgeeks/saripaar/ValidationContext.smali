.class public Lcom/mobsandgeeks/saripaar/ValidationContext;
.super Ljava/lang/Object;
.source "ValidationContext.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mViewRulesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/mobsandgeeks/saripaar/Rule;",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/ValidationContext;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private assertIsRegisteredAnnotation(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Lcom/mobsandgeeks/saripaar/Validator;->isSaripaarAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "%s is not a registered Saripaar annotation."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 137
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    return-void
.end method

.method private assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const-string v0, "\'%s\' cannot be null."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    return-void
.end method

.method private getRuleClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/mobsandgeeks/saripaar/AnnotationRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const-class v0, Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;

    .line 147
    invoke-interface {v0}, Lcom/mobsandgeeks/saripaar/annotation/ValidateUsing;->value()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAnnotatedViews(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const-string v0, "saripaarAnnotation"

    invoke-direct {p0, p1, v0}, Lcom/mobsandgeeks/saripaar/ValidationContext;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/ValidationContext;->assertIsRegisteredAnnotation(Ljava/lang/Class;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/mobsandgeeks/saripaar/ValidationContext;->getRuleClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/ValidationContext;->mViewRulesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 66
    iget-object v1, p0, Lcom/mobsandgeeks/saripaar/ValidationContext;->mViewRulesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 68
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/mobsandgeeks/saripaar/Rule;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 71
    :goto_1
    if-eqz v1, :cond_1

    .line 72
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 77
    :cond_3
    return-object v3
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/ValidationContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getData(Landroid/view/View;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 90
    const-string v0, "view"

    invoke-direct {p0, p1, v0}, Lcom/mobsandgeeks/saripaar/ValidationContext;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-string v0, "saripaarAnnotation"

    invoke-direct {p0, p2, v0}, Lcom/mobsandgeeks/saripaar/ValidationContext;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/mobsandgeeks/saripaar/ValidationContext;->mViewRulesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 95
    invoke-direct {p0, p2}, Lcom/mobsandgeeks/saripaar/ValidationContext;->getRuleClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 98
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/mobsandgeeks/saripaar/Rule;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :try_start_0
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;

    invoke-interface {v0, p1}, Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;->getData(Landroid/view/View;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/mobsandgeeks/saripaar/exception/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 105
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Lcom/mobsandgeeks/saripaar/exception/ConversionException;->printStackTrace()V

    :cond_0
    move-object v0, v2

    goto :goto_1

    .line 107
    :cond_1
    return-object v2
.end method

.method setViewRulesMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/mobsandgeeks/saripaar/Rule;",
            "Lcom/mobsandgeeks/saripaar/adapter/ViewDataAdapter;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mobsandgeeks/saripaar/ValidationContext;->mViewRulesMap:Ljava/util/Map;

    .line 121
    return-void
.end method
