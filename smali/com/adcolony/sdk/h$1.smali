.class Lcom/adcolony/sdk/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iget-boolean v0, v0, Lcom/adcolony/sdk/aj;->m:Z

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aj;->a(Z)V

    .line 269
    :cond_0
    invoke-static {p1}, Lcom/adcolony/sdk/a;->a(Landroid/app/Activity;)V

    .line 270
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 231
    sput-boolean v1, Lcom/adcolony/sdk/a;->o:Z

    .line 232
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iput-boolean v1, v0, Lcom/adcolony/sdk/aj;->j:Z

    .line 233
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adcolony/sdk/aj;->l:Z

    .line 235
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->m:Lcom/adcolony/sdk/j;

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->x()Z

    .line 239
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    sput-boolean v2, Lcom/adcolony/sdk/a;->o:Z

    .line 178
    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iget-boolean v0, v0, Lcom/adcolony/sdk/aj;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    instance-of v0, v0, Lcom/adcolony/sdk/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adcolony/sdk/a;->l:Landroid/app/Activity;

    check-cast v0, Lcom/adcolony/sdk/b;

    check-cast v0, Lcom/adcolony/sdk/b;

    iget-boolean v0, v0, Lcom/adcolony/sdk/b;->g:Z

    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "Ignoring onActivityResumed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 226
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "onActivityResumed() Activity Lifecycle Callback"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 185
    invoke-static {p1}, Lcom/adcolony/sdk/a;->a(Landroid/app/Activity;)V

    .line 191
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->w:Lcom/adcolony/sdk/z;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->w:Lcom/adcolony/sdk/z;

    iget-object v1, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v1, v1, Lcom/adcolony/sdk/h;->w:Lcom/adcolony/sdk/z;

    iget-object v1, v1, Lcom/adcolony/sdk/z;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/z;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/z;->b()V

    .line 195
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adcolony/sdk/h;->w:Lcom/adcolony/sdk/z;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iput-boolean v3, v0, Lcom/adcolony/sdk/h;->E:Z

    .line 200
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iput-boolean v2, v0, Lcom/adcolony/sdk/aj;->j:Z

    .line 201
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iput-boolean v2, v0, Lcom/adcolony/sdk/aj;->l:Z

    .line 202
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iput-boolean v3, v0, Lcom/adcolony/sdk/aj;->r:Z

    .line 205
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-boolean v0, v0, Lcom/adcolony/sdk/h;->H:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    iget-boolean v0, v0, Lcom/adcolony/sdk/aj;->m:Z

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->f:Lcom/adcolony/sdk/aj;

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/aj;->a(Z)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/h$1;->a:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->h:Lcom/adcolony/sdk/k;

    invoke-virtual {v0}, Lcom/adcolony/sdk/k;->a()V

    .line 216
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    iget-object v0, v0, Lcom/adcolony/sdk/ag;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    iget-object v0, v0, Lcom/adcolony/sdk/ag;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 218
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v0, v0, Lcom/adcolony/sdk/h;->v:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-static {p1, v0}, Lcom/adcolony/sdk/AdColony;->a(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;)V

    goto :goto_0

    .line 224
    :cond_4
    sget-object v0, Lcom/adcolony/sdk/w;->j:Lcom/adcolony/sdk/ag;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/adcolony/sdk/ag;->a(JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 254
    return-void
.end method
