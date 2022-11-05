.class public Lcom/apprupt/sdk/CvListActivity;
.super Landroid/app/ListActivity;
.source "CvListActivity.java"

# interfaces
.implements Lcom/apprupt/sdk/CvBaseActivity;


# instance fields
.field protected a:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;

.field protected final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apprupt/sdk/CvBaseActivity$PermissionListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvListActivity;->e:Z

    .line 20
    iput-object v1, p0, Lcom/apprupt/sdk/CvListActivity;->a:Landroid/webkit/ValueCallback;

    .line 21
    iput-object v1, p0, Lcom/apprupt/sdk/CvListActivity;->b:Landroid/webkit/ValueCallback;

    .line 22
    iput-object v1, p0, Lcom/apprupt/sdk/CvListActivity;->c:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apprupt/sdk/CvListActivity;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/apprupt/sdk/CvListActivity;->b:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public a(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/apprupt/sdk/CvListActivity;->b:Landroid/webkit/ValueCallback;

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/apprupt/sdk/CvListActivity;->c:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public b()Landroid/webkit/ValueCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/apprupt/sdk/CvListActivity;->a:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public b(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/apprupt/sdk/CvListActivity;->a:Landroid/webkit/ValueCallback;

    .line 112
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/apprupt/sdk/CvListActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvListActivity;->a()Landroid/webkit/ValueCallback;

    move-result-object v3

    .line 63
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvListActivity;->b()Landroid/webkit/ValueCallback;

    move-result-object v4

    .line 65
    if-ne p1, v6, :cond_0

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 66
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 95
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/apprupt/sdk/CvListActivity;->c()Ljava/lang/String;

    move-result-object v5

    .line 73
    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    .line 74
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 76
    if-eqz v5, :cond_6

    .line 77
    new-array v1, v6, [Landroid/net/Uri;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v1, v0

    .line 85
    :goto_1
    if-nez v4, :cond_3

    .line 86
    invoke-interface {v4, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/apprupt/sdk/CvListActivity;->b(Landroid/webkit/ValueCallback;)V

    .line 89
    :cond_3
    if-eqz v3, :cond_1

    .line 90
    array-length v4, v1

    :goto_2
    if-ge v0, v4, :cond_5

    aget-object v5, v1, v0

    .line 91
    invoke-interface {v3, v5}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 81
    new-array v1, v6, [Landroid/net/Uri;

    aput-object v5, v1, v0

    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0, v2}, Lcom/apprupt/sdk/CvListActivity;->a(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Lcom/apprupt/sdk/CvSDK;->a(Landroid/app/Activity;)V

    .line 36
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 51
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->a()V

    .line 52
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    .line 152
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    iget-object v0, p0, Lcom/apprupt/sdk/CvListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/CvBaseActivity$PermissionListener;

    .line 155
    invoke-interface {v0, p1, p2, p3}, Lcom/apprupt/sdk/CvBaseActivity$PermissionListener;->a(I[Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/apprupt/sdk/CvListActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 162
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 41
    invoke-static {p0}, Lcom/apprupt/sdk/CvSDK;->b(Landroid/app/Activity;)V

    .line 42
    iget-boolean v0, p0, Lcom/apprupt/sdk/CvListActivity;->e:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/apprupt/sdk/CvSDK;->c()V

    .line 45
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvListActivity;->e:Z

    .line 46
    return-void
.end method
