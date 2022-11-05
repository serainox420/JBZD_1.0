.class final Lcom/flurry/sdk/is$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/is;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/is;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/is;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/flurry/sdk/is$5;->a:Lcom/flurry/sdk/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lcom/flurry/sdk/is;->a()Lcom/flurry/sdk/is;

    invoke-static {}, Lcom/flurry/sdk/is;->b()Ljava/util/List;

    move-result-object v0

    .line 323
    sget-object v1, Lcom/flurry/sdk/is;->d:Lcom/flurry/sdk/kf;

    if-nez v1, :cond_0

    .line 324
    invoke-static {}, Lcom/flurry/sdk/is;->e()V

    .line 327
    :cond_0
    sget-object v1, Lcom/flurry/sdk/is;->d:Lcom/flurry/sdk/kf;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kf;->a(Ljava/lang/Object;)V

    .line 328
    return-void
.end method
