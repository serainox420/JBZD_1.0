.class final Lcom/flurry/sdk/fb$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/em$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/el;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/flurry/sdk/fb$3;->a:Lcom/flurry/sdk/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/el;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/flurry/sdk/fb$3;->a:Lcom/flurry/sdk/fb;

    invoke-static {v0, p1}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;Lcom/flurry/sdk/el;)V

    .line 233
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/flurry/sdk/ei;->j:Lcom/flurry/sdk/ei;

    iget-object v1, p0, Lcom/flurry/sdk/fb$3;->a:Lcom/flurry/sdk/fb;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->d(Lcom/flurry/sdk/fb;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 238
    return-void
.end method
