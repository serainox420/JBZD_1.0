.class final Lcom/flurry/sdk/hf$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/gz$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/flurry/sdk/hf$a$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/hf$a$1;-><init>(Lcom/flurry/sdk/hf$a;)V

    iput-object v0, p0, Lcom/flurry/sdk/hf$a;->a:Lcom/flurry/sdk/gz$a;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/flurry/sdk/hf$a;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .locals 2

    .prologue
    .line 1121
    new-instance v0, Lcom/flurry/sdk/gx;

    invoke-direct {v0}, Lcom/flurry/sdk/gx;-><init>()V

    .line 1122
    sget v1, Lcom/flurry/sdk/gx$a;->b:I

    iput v1, v0, Lcom/flurry/sdk/gx;->d:I

    .line 2025
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kg;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/gz;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/flurry/sdk/gy;

    iget-object v1, p0, Lcom/flurry/sdk/hf$a;->a:Lcom/flurry/sdk/gz$a;

    invoke-direct {v0, p1, p2, v1}, Lcom/flurry/sdk/gy;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V

    return-object v0
.end method
