.class public final Lcom/revmob/internal/d;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Lcom/revmob/RevMobAdsListener;

.field private b:Landroid/app/Activity;

.field private c:Lcom/revmob/client/a;

.field private d:Lcom/revmob/internal/i;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/client/a;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/revmob/internal/d;-><init>(Landroid/app/Activity;Lcom/revmob/client/a;Lcom/revmob/RevMobAdsListener;B)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/revmob/client/a;Lcom/revmob/RevMobAdsListener;B)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/revmob/internal/d;-><init>(Landroid/app/Activity;Lcom/revmob/client/a;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/i;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/client/a;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/i;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/internal/d;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revmob/internal/d;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/revmob/internal/d;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/revmob/internal/d;->a:Lcom/revmob/RevMobAdsListener;

    iput-object p2, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    iput-object p4, p0, Lcom/revmob/internal/d;->d:Lcom/revmob/internal/i;

    iput-object p5, p0, Lcom/revmob/internal/d;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/revmob/internal/d;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/revmob/internal/d;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/revmob/internal/d;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    iget-object v0, v0, Lcom/revmob/client/a;->d:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/revmob/internal/w;->c:Lcom/revmob/internal/w;

    const-string v3, "openUrlInTheBrowser"

    invoke-static {v1, v0, v2, p1, v3}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "market://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/internal/d;->b:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/revmob/internal/d;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Click url ( "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ) not valid. Please report this to support@revmob.com with the exception stack trace: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    invoke-virtual {v0}, Lcom/revmob/client/a;->T()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    iget-object v1, p0, Lcom/revmob/internal/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/client/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/revmob/internal/j;

    invoke-static {}, Lcom/revmob/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/revmob/internal/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    invoke-virtual {v2}, Lcom/revmob/client/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/revmob/internal/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/revmob/internal/d;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    iget-object v2, v2, Lcom/revmob/client/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    invoke-virtual {v2}, Lcom/revmob/client/a;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    invoke-virtual {v2}, Lcom/revmob/client/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#click"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    iget-object v3, p0, Lcom/revmob/internal/d;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/revmob/client/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/revmob/internal/d;->e:Z

    new-instance v4, Lcom/revmob/internal/h;

    invoke-direct {v4, v2, v3}, Lcom/revmob/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_0
    const-string v2, "alreadyOpeningBrowser"

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/revmob/internal/d;->a:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/internal/d;->a:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdClicked()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    iget-object v2, v2, Lcom/revmob/client/a;->e:Ljava/lang/String;

    const-string v3, "link"

    if-ne v2, v3, :cond_3

    const-string v0, "Redirect link not received."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revmob/internal/d;->a:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/revmob/internal/d;->a:Lcom/revmob/RevMobAdsListener;

    const-string v1, "Native link not received."

    invoke-virtual {v0, v1}, Lcom/revmob/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/revmob/internal/d;->a:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/revmob/internal/d;->a:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdClicked()V

    :cond_4
    iget-object v0, p0, Lcom/revmob/internal/d;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/revmob/FullscreenActivity;->a(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    iget-object v2, v2, Lcom/revmob/client/a;->c:Ljava/lang/String;

    const-string v3, "site"

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    invoke-virtual {v2}, Lcom/revmob/client/a;->U()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/revmob/internal/d;->b:Landroid/app/Activity;

    new-instance v2, Lcom/revmob/internal/e;

    invoke-direct {v2, p0, v1}, Lcom/revmob/internal/e;-><init>(Lcom/revmob/internal/d;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/revmob/internal/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    iget-object v1, p0, Lcom/revmob/internal/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/client/a;->c(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    invoke-virtual {v0}, Lcom/revmob/client/a;->U()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    iget-object v1, p0, Lcom/revmob/internal/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/client/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/internal/d;->b:Landroid/app/Activity;

    new-instance v2, Lcom/revmob/internal/f;

    invoke-direct {v2, p0, v0}, Lcom/revmob/internal/f;-><init>(Lcom/revmob/internal/d;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/revmob/internal/d;->c:Lcom/revmob/client/a;

    iget-object v1, p0, Lcom/revmob/internal/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/client/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revmob/internal/d;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/revmob/internal/d;->d:Lcom/revmob/internal/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/internal/d;->d:Lcom/revmob/internal/i;

    invoke-interface {v0}, Lcom/revmob/internal/i;->a()V

    :cond_0
    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method
