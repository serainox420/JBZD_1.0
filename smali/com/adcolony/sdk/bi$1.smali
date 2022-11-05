.class Lcom/adcolony/sdk/bi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bi;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/adcolony/sdk/bi;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bi;I)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    iput p2, p0, Lcom/adcolony/sdk/bi$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 127
    iget v0, p0, Lcom/adcolony/sdk/bi$1;->a:I

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "overlay error"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 129
    iget-object v0, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    sget-object v1, Lcom/adcolony/sdk/bi$d;->e:Lcom/adcolony/sdk/bi$d;

    iput-object v1, v0, Lcom/adcolony/sdk/bi;->E:Lcom/adcolony/sdk/bi$d;

    .line 130
    iget-object v0, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    const-string v1, "http://www.yvolver.com"

    iget-object v2, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    iget-object v2, v2, Lcom/adcolony/sdk/bi;->L:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "the splash was requested"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->as()Lcom/adcolony/sdk/be;

    move-result-object v0

    const-string v1, "catalog_splash"

    .line 137
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/be;->b(Ljava/lang/String;)Lcom/adcolony/sdk/be$a;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/adcolony/sdk/be$a;->b()Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v0, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    iget-object v0, v0, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    const-string v1, "http://www.yvolver.com"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bi;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to load splash asset"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    iget-object v0, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    iget-object v1, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    iget-object v1, v1, Lcom/adcolony/sdk/bi;->q:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    invoke-static {v2}, Lcom/adcolony/sdk/bi;->a(Lcom/adcolony/sdk/bi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/bi;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/adcolony/sdk/bi$1;->b:Lcom/adcolony/sdk/bi;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/adcolony/sdk/bi;->t:J

    goto :goto_0
.end method
