.class Lcom/facebook/ads/internal/e/d$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/e/f;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/e/f;

.field final synthetic b:Lcom/facebook/ads/internal/e/a;

.field final synthetic c:Lcom/facebook/ads/internal/e/d;

.field private d:Lcom/facebook/ads/internal/e/f$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/e/d;Lcom/facebook/ads/internal/e/f;Lcom/facebook/ads/internal/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/e/d$1;->c:Lcom/facebook/ads/internal/e/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/e/d$1;->a:Lcom/facebook/ads/internal/e/f;

    iput-object p3, p0, Lcom/facebook/ads/internal/e/d$1;->b:Lcom/facebook/ads/internal/e/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/e/d$1;->a:Lcom/facebook/ads/internal/e/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/e/f;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/e/d$1;->a:Lcom/facebook/ads/internal/e/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/e/f;->c()Lcom/facebook/ads/internal/e/f$a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/e/d$1;->d:Lcom/facebook/ads/internal/e/f$a;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/facebook/ads/internal/e/f$a;->a:Lcom/facebook/ads/internal/e/f$a;

    iput-object v1, p0, Lcom/facebook/ads/internal/e/d$1;->d:Lcom/facebook/ads/internal/e/f$a;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/e/d$1;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$1;->d:Lcom/facebook/ads/internal/e/f$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$1;->b:Lcom/facebook/ads/internal/e/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/e/a;->a(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$1;->b:Lcom/facebook/ads/internal/e/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/a;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$1;->b:Lcom/facebook/ads/internal/e/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/e/d$1;->d:Lcom/facebook/ads/internal/e/f$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/e/f$a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$1;->d:Lcom/facebook/ads/internal/e/f$a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/e/f$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/e/a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
