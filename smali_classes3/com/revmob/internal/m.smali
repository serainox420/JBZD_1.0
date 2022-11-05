.class public final Lcom/revmob/internal/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/revmob/internal/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/app/Activity;

.field private d:Ljava/lang/String;

.field private e:Lcom/revmob/internal/b;

.field private f:Landroid/content/SharedPreferences;

.field private g:Landroid/content/DialogInterface;

.field private h:Z

.field private i:Lcom/revmob/RevMobAdsListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RevMobEula_v"

    iput-object v0, p0, Lcom/revmob/internal/m;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/revmob/internal/m;->c:Landroid/app/Activity;

    iput-object p2, p0, Lcom/revmob/internal/m;->i:Lcom/revmob/RevMobAdsListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/revmob/internal/m;->e:Lcom/revmob/internal/b;

    invoke-virtual {v0}, Lcom/revmob/internal/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/internal/m;->e:Lcom/revmob/internal/b;

    invoke-virtual {v0}, Lcom/revmob/internal/b;->a()Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/revmob/internal/w;->b:Lcom/revmob/internal/w;

    const-string v2, "onTaskComplete"

    invoke-static {v0, v6, v1, v6, v2}, Lcom/revmob/internal/u;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/m;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const-string v0, "RevMob EULA"

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/revmob/internal/m;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/internal/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "I agree"

    new-instance v2, Lcom/revmob/internal/o;

    invoke-direct {v2, p0}, Lcom/revmob/internal/o;-><init>(Lcom/revmob/internal/m;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "I don\'t agree"

    new-instance v2, Lcom/revmob/internal/n;

    invoke-direct {v2, p0}, Lcom/revmob/internal/n;-><init>(Lcom/revmob/internal/m;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/m;->g:Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/revmob/internal/m;->g:Landroid/content/DialogInterface;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/revmob/internal/m;->i:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/internal/m;->i:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobEulaIsShown()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/revmob/internal/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/revmob/internal/m;->h:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/revmob/internal/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/revmob/internal/c;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/m;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/revmob/internal/m;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/internal/m;->f:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/revmob/internal/m;->f:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/revmob/internal/m;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/revmob/internal/c;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/revmob/internal/b;

    iget-object v3, p0, Lcom/revmob/internal/m;->c:Landroid/app/Activity;

    invoke-direct {v2, v3, v0, v1, p0}, Lcom/revmob/internal/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/revmob/internal/a;)V

    iput-object v2, p0, Lcom/revmob/internal/m;->e:Lcom/revmob/internal/b;

    iget-object v0, p0, Lcom/revmob/internal/m;->e:Lcom/revmob/internal/b;

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/revmob/internal/m;->h:Z

    if-nez v0, :cond_0

    const-string v0, "Eula accepted and dismissed."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/revmob/internal/m;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/internal/m;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/revmob/internal/m;->g:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    iput-boolean v2, p0, Lcom/revmob/internal/m;->h:Z

    iget-object v0, p0, Lcom/revmob/internal/m;->i:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/internal/m;->i:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobEulaWasAcceptedAndDismissed()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/revmob/internal/m;->h:Z

    if-nez v0, :cond_1

    const-string v0, "Eula rejected."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/internal/m;->h:Z

    iget-object v0, p0, Lcom/revmob/internal/m;->i:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/internal/m;->i:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobEulaWasRejected()V

    :cond_0
    iget-object v0, p0, Lcom/revmob/internal/m;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/revmob/internal/m;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void
.end method
