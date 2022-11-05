.class Lcom/openx/model/OXMAdModelFactory$OXMAdModelFactoryHolder;
.super Ljava/lang/Object;
.source "OXMAdModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/model/OXMAdModelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OXMAdModelFactoryHolder"
.end annotation


# static fields
.field public static final instance:Lcom/openx/model/OXMAdModelFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/openx/model/OXMAdModelFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openx/model/OXMAdModelFactory;-><init>(Lcom/openx/model/OXMAdModelFactory$1;)V

    sput-object v0, Lcom/openx/model/OXMAdModelFactory$OXMAdModelFactoryHolder;->instance:Lcom/openx/model/OXMAdModelFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
