.class final Lcom/flurry/sdk/jh$6;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jh;->a(J)V
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
    .line 370
    iput-object p1, p0, Lcom/flurry/sdk/jh$6;->b:Lcom/flurry/sdk/jh;

    iput-wide p2, p0, Lcom/flurry/sdk/jh$6;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/flurry/sdk/jh$6;->b:Lcom/flurry/sdk/jh;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/flurry/sdk/jh$6;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/jh;->a(Lcom/flurry/sdk/jh;ZJ)V

    .line 374
    return-void
.end method
