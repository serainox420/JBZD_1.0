.class Lcom/facebook/ads/internal/e/d$2;
.super Lcom/facebook/ads/internal/e/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/g/d;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/e/i",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/g/d;

.field final synthetic b:Lcom/facebook/ads/internal/e/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/e/d;Lcom/facebook/ads/internal/g/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/e/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 12

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/g/d;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/e/d;->b(Lcom/facebook/ads/internal/e/d;)Lcom/facebook/ads/internal/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/e/d$2;->b:Lcom/facebook/ads/internal/e/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/e/d;)Lcom/facebook/ads/internal/e/h;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/e/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/g/d;->a()Lcom/facebook/ads/internal/g/h;

    move-result-object v2

    iget v2, v2, Lcom/facebook/ads/internal/g/h;->c:I

    iget-object v3, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/g/d;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/g/d;->e()D

    move-result-wide v4

    iget-object v6, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/g/d;->f()D

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v8}, Lcom/facebook/ads/internal/g/d;->g()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/ads/internal/e/d$2;->a:Lcom/facebook/ads/internal/g/d;

    invoke-virtual {v9}, Lcom/facebook/ads/internal/g/d;->h()Ljava/util/Map;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/ads/internal/e/c;->a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/ads/internal/e/f$a;->c:Lcom/facebook/ads/internal/e/f$a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/e/d$2;->a(Lcom/facebook/ads/internal/e/f$a;)V

    move-object v0, v10

    goto :goto_1

    :cond_0
    move-object v0, v10

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/d$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
