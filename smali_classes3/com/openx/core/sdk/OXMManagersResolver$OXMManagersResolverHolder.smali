.class Lcom/openx/core/sdk/OXMManagersResolver$OXMManagersResolverHolder;
.super Ljava/lang/Object;
.source "OXMManagersResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/core/sdk/OXMManagersResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OXMManagersResolverHolder"
.end annotation


# static fields
.field public static final instance:Lcom/openx/core/sdk/OXMManagersResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/openx/core/sdk/OXMManagersResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/openx/core/sdk/OXMManagersResolver;-><init>(Lcom/openx/core/sdk/OXMManagersResolver$1;)V

    sput-object v0, Lcom/openx/core/sdk/OXMManagersResolver$OXMManagersResolverHolder;->instance:Lcom/openx/core/sdk/OXMManagersResolver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
