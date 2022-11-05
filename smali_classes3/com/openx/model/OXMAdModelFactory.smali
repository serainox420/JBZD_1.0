.class public Lcom/openx/model/OXMAdModelFactory;
.super Ljava/lang/Object;
.source "OXMAdModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openx/model/OXMAdModelFactory$1;,
        Lcom/openx/model/OXMAdModelFactory$OXMAdModelFactoryHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/openx/model/OXMAdModelFactory$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/openx/model/OXMAdModelFactory;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/openx/model/OXMAdModelFactory;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/openx/model/OXMAdModelFactory$OXMAdModelFactoryHolder;->instance:Lcom/openx/model/OXMAdModelFactory;

    return-object v0
.end method


# virtual methods
.method public createNewModel()Lcom/openx/model/AdModel;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/openx/model/AdModel;

    invoke-direct {v0}, Lcom/openx/model/AdModel;-><init>()V

    .line 38
    return-object v0
.end method
