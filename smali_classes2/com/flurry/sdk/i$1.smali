.class final Lcom/flurry/sdk/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kh",
        "<",
        "Lcom/flurry/sdk/kb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/i;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/i;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/kg;)V
    .locals 3

    .prologue
    .line 77
    check-cast p1, Lcom/flurry/sdk/kb;

    .line 1080
    iget-object v0, p1, Lcom/flurry/sdk/kb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1081
    if-nez v0, :cond_1

    .line 1082
    invoke-static {}, Lcom/flurry/sdk/i;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity has been destroyed, can\'t pass ActivityLifecycleEvent to adobject."

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    sget-object v1, Lcom/flurry/sdk/kb$a;->c:Lcom/flurry/sdk/kb$a;

    iget-object v2, p1, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/kb$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/kb$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1088
    iget-object v1, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/p;->a(Landroid/content/Context;)V

    .line 1089
    iget-object v1, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->b(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 1090
    :cond_2
    sget-object v1, Lcom/flurry/sdk/kb$a;->d:Lcom/flurry/sdk/kb$a;

    iget-object v2, p1, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/kb$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/kb$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1092
    iget-object v1, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/p;->b(Landroid/content/Context;)V

    .line 1093
    iget-object v1, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->b(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/w;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 1094
    :cond_3
    sget-object v1, Lcom/flurry/sdk/kb$a;->b:Lcom/flurry/sdk/kb$a;

    iget-object v2, p1, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/kb$a;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/kb$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->a(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/p;->c(Landroid/content/Context;)V

    .line 1097
    iget-object v1, p0, Lcom/flurry/sdk/i$1;->a:Lcom/flurry/sdk/i;

    invoke-static {v1}, Lcom/flurry/sdk/i;->b(Lcom/flurry/sdk/i;)Lcom/flurry/sdk/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/w;->c(Landroid/content/Context;)V

    goto :goto_0
.end method
