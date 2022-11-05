.class final Lcom/flurry/sdk/jh$4;
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

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/flurry/sdk/jh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jh;JJJI)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/flurry/sdk/jh$4;->e:Lcom/flurry/sdk/jh;

    iput-wide p2, p0, Lcom/flurry/sdk/jh$4;->a:J

    iput-wide p4, p0, Lcom/flurry/sdk/jh$4;->b:J

    iput-wide p6, p0, Lcom/flurry/sdk/jh$4;->c:J

    iput p8, p0, Lcom/flurry/sdk/jh$4;->d:I

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 325
    iget-object v1, p0, Lcom/flurry/sdk/jh$4;->e:Lcom/flurry/sdk/jh;

    iget-wide v2, p0, Lcom/flurry/sdk/jh$4;->a:J

    iget-wide v4, p0, Lcom/flurry/sdk/jh$4;->b:J

    iget-wide v6, p0, Lcom/flurry/sdk/jh$4;->c:J

    iget v8, p0, Lcom/flurry/sdk/jh$4;->d:I

    invoke-virtual/range {v1 .. v8}, Lcom/flurry/sdk/jh;->a(JJJI)Lcom/flurry/sdk/jf;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/flurry/sdk/jh$4;->e:Lcom/flurry/sdk/jh;

    invoke-static {v1}, Lcom/flurry/sdk/jh;->f(Lcom/flurry/sdk/jh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 333
    iget-object v1, p0, Lcom/flurry/sdk/jh$4;->e:Lcom/flurry/sdk/jh;

    invoke-static {v1}, Lcom/flurry/sdk/jh;->f(Lcom/flurry/sdk/jh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/flurry/sdk/jh$4;->e:Lcom/flurry/sdk/jh;

    invoke-virtual {v0}, Lcom/flurry/sdk/jh;->d()V

    .line 336
    return-void
.end method
