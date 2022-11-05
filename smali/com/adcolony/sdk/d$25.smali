.class Lcom/adcolony/sdk/d$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/c;

.field final synthetic b:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/c;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/adcolony/sdk/d$25;->b:Lcom/adcolony/sdk/d;

    iput-object p2, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 945
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v1, v1, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/ac;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->b(Ljava/lang/String;Lcom/adcolony/sdk/ac;)V

    .line 945
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 951
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 952
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->removeAllViews()V

    .line 953
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iput-object v5, v0, Lcom/adcolony/sdk/c;->u:Landroid/widget/VideoView;

    .line 954
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iput-object v5, v0, Lcom/adcolony/sdk/c;->t:Landroid/content/Context;

    .line 956
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "Destroying container tied to ad_session_id = "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v1, v1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 957
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/o;

    .line 959
    invoke-virtual {v0}, Lcom/adcolony/sdk/o;->b()Z

    goto :goto_1

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/aw;

    .line 965
    iget-boolean v2, v0, Lcom/adcolony/sdk/aw;->b:Z

    if-nez v2, :cond_2

    .line 967
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget v3, v0, Lcom/adcolony/sdk/aw;->a:I

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/h;->a(I)Z

    .line 968
    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/aw;->loadUrl(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/aw;->clearCache(Z)V

    .line 970
    invoke-virtual {v0}, Lcom/adcolony/sdk/aw;->removeAllViews()V

    .line 971
    iput-boolean v4, v0, Lcom/adcolony/sdk/aw;->c:Z

    goto :goto_2

    .line 978
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/u;->d:Lcom/adcolony/sdk/u;

    const-string v1, "Stopping and releasing all media players associated with VideoViews tied to ad_session_id = "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v1, v1, Lcom/adcolony/sdk/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 979
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/av;

    .line 981
    invoke-virtual {v0}, Lcom/adcolony/sdk/av;->c()V

    .line 982
    iput-boolean v4, v0, Lcom/adcolony/sdk/av;->c:Z

    .line 983
    iput-object v5, v0, Lcom/adcolony/sdk/av;->d:Landroid/content/Context;

    goto :goto_3

    .line 986
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 987
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 988
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 989
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 990
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 991
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 992
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 993
    iget-object v0, p0, Lcom/adcolony/sdk/d$25;->a:Lcom/adcolony/sdk/c;

    iget-object v0, v0, Lcom/adcolony/sdk/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 994
    return-void
.end method
