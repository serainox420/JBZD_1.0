.class final Lcom/flurry/sdk/jh$2;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jh;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/flurry/sdk/jh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jh;J)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/flurry/sdk/jh$2;->b:Lcom/flurry/sdk/jh;

    iput-wide p2, p0, Lcom/flurry/sdk/jh$2;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 306
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    .line 1086
    iget-object v0, v0, Lcom/flurry/sdk/hr;->a:Lcom/flurry/sdk/im;

    .line 306
    iget-wide v2, p0, Lcom/flurry/sdk/jh$2;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/im;->a(J)V

    .line 307
    return-void
.end method
