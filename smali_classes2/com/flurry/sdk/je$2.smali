.class final Lcom/flurry/sdk/je$2;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/je;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/je;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/je;I)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/flurry/sdk/je$2;->b:Lcom/flurry/sdk/je;

    iput p2, p0, Lcom/flurry/sdk/je$2;->a:I

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Lcom/flurry/sdk/je$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 170
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    .line 1098
    invoke-static {}, Lcom/flurry/sdk/hr;->b()Lcom/flurry/sdk/jh;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_0

    .line 1421
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/jh;->j:Z

    .line 172
    :cond_0
    return-void
.end method
