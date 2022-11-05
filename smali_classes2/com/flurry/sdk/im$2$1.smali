.class final Lcom/flurry/sdk/im$2$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/im$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/flurry/sdk/im$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/im$2;[B)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/flurry/sdk/im$2$1;->b:Lcom/flurry/sdk/im$2;

    iput-object p2, p0, Lcom/flurry/sdk/im$2$1;->a:[B

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 442
    iget-object v0, p0, Lcom/flurry/sdk/im$2$1;->b:Lcom/flurry/sdk/im$2;

    iget-object v0, v0, Lcom/flurry/sdk/im$2;->c:Lcom/flurry/sdk/im;

    iget-object v1, p0, Lcom/flurry/sdk/im$2$1;->b:Lcom/flurry/sdk/im$2;

    iget-wide v2, v1, Lcom/flurry/sdk/im$2;->a:J

    iget-object v1, p0, Lcom/flurry/sdk/im$2$1;->b:Lcom/flurry/sdk/im$2;

    iget-boolean v1, v1, Lcom/flurry/sdk/im$2;->b:Z

    iget-object v4, p0, Lcom/flurry/sdk/im$2$1;->a:[B

    invoke-static {v0, v2, v3, v1, v4}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/im;JZ[B)V

    .line 443
    return-void
.end method
