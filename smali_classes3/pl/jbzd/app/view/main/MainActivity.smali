.class public Lpl/jbzd/app/view/main/MainActivity;
.super Lpl/jbzd/app/view/menu/MenuActivity;
.source "MainActivity.java"

# interfaces
.implements Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/jbzd/app/view/main/MainActivity$FragmentType;
    }
.end annotation


# static fields
.field public static d:Z


# instance fields
.field public e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

.field public f:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

.field public g:Lpl/jbzd/app/view/menu/model/Item;

.field private i:J

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl/jbzd/app/view/menu/model/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Lpl/jbzd/app/view/menu/MenuActivity;-><init>()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpl/jbzd/app/view/main/MainActivity;->i:J

    .line 101
    iput-object v2, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    .line 102
    iput-object v2, p0, Lpl/jbzd/app/view/main/MainActivity;->f:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lpl/jbzd/app/view/main/MainActivity;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lpl/jbzd/app/view/main/MainActivity;->h()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lpl/jbzd/app/view/main/MainActivity;)Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method

.method static synthetic c(Lpl/jbzd/app/view/main/MainActivity;)Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->a:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method

.method static synthetic d(Lpl/jbzd/app/view/main/MainActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lpl/jbzd/app/view/main/MainActivity;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lpl/jbzd/app/view/main/MainActivity;->i()V

    return-void
.end method

.method static synthetic f(Lpl/jbzd/app/view/main/MainActivity;)Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->h:Landroid/support/v7/app/a;

    return-object v0
.end method

.method private h()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 517
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 815
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->h:Landroid/support/v7/app/a;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/a;->a(Z)V

    .line 818
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 819
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 820
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->h:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->a()V

    .line 833
    :goto_0
    return-void

    .line 824
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/main/MainActivity$4;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/main/MainActivity$4;-><init>(Lpl/jbzd/app/view/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/a;
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/a;

    .line 359
    if-nez v0, :cond_1

    .line 361
    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->RANDOM:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->WAITING:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    :cond_0
    invoke-static {p1, p2}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/feed/FeedFragment;

    move-result-object v0

    .line 375
    :cond_1
    :goto_0
    return-object v0

    .line 364
    :cond_2
    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    invoke-static {p2}, Lpl/jbzd/app/view/feed/FeedTopFragment;->a(Lpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/feed/FeedTopFragment;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_3
    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    iget v0, p2, Lpl/jbzd/app/view/menu/model/Item;->c:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lpl/jbzd/app/view/feed/FeedFragment;->a(Lpl/jbzd/app/view/main/MainActivity$FragmentType;ILpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/feed/FeedFragment;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_4
    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->SETTINGS:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    if-ne p1, v1, :cond_1

    .line 371
    invoke-static {p2}, Lpl/jbzd/app/view/settings/SettingsFragment;->a(Lpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/settings/SettingsFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    invoke-virtual {v0}, Lpl/jbzd/core/ui/view/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 501
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    const v1, 0x7f0a00e8

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    .line 503
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    new-instance v1, Lpl/jbzd/app/view/main/MainActivity$8;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/main/MainActivity$8;-><init>(Lpl/jbzd/app/view/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/core/ui/view/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    return-void
.end method

.method public a(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 840
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 841
    const-string v1, "token"

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 842
    const-string v1, "tags"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 843
    const-string v1, "type"

    const-string v2, "image"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 846
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 847
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v2, 0x5f5e0ff

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 849
    if-eqz p1, :cond_0

    .line 850
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;->a(Z)V

    .line 853
    :cond_0
    new-instance v0, Lnet/gotev/uploadservice/e;

    const-string v3, "http://api.jbzd.pl/api/media/create"

    invoke-direct {v0, p0, v3}, Lnet/gotev/uploadservice/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v0, v3, v4}, Lnet/gotev/uploadservice/e;->b(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/e;

    move-result-object v0

    const-string v3, "data"

    .line 856
    invoke-virtual {v0, v3, v1}, Lnet/gotev/uploadservice/e;->a(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/c;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/e;

    const-string v3, "build"

    const-string v4, "8"

    .line 857
    invoke-virtual {v0, v3, v4}, Lnet/gotev/uploadservice/e;->a(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/c;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/e;

    const-string v3, "hash"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "KZADSG7diTLJq6v"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-static {v1}, Lpl/jbzd/core/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lnet/gotev/uploadservice/e;->a(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/c;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/e;

    const-string v1, "salt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-virtual {v0, v1, v2}, Lnet/gotev/uploadservice/e;->a(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/c;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/e;

    const/4 v1, 0x5

    .line 860
    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/e;->a(I)Lnet/gotev/uploadservice/h;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/e;

    new-instance v1, Lpl/jbzd/app/view/main/MainActivity$5;

    invoke-direct {v1, p0, p1}, Lpl/jbzd/app/view/main/MainActivity$5;-><init>(Lpl/jbzd/app/view/main/MainActivity;Lpl/jbzd/app/ui/view/dialog/AddKwejkDialog;)V

    .line 861
    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/e;->a(Lnet/gotev/uploadservice/i;)Lnet/gotev/uploadservice/h;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/e;

    .line 917
    invoke-virtual {v0}, Lnet/gotev/uploadservice/e;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :goto_0
    return v5

    .line 919
    :catch_0
    move-exception v0

    .line 920
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const v3, 0x800003

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 706
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 708
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 709
    if-nez v0, :cond_1

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;-><init>()V

    .line 711
    :cond_1
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 713
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a(I)V

    .line 714
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 744
    :cond_2
    :goto_0
    return-void

    .line 719
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 720
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->f(I)V

    .line 723
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_6

    .line 725
    const-string v0, "android.permission.CAMERA"

    .line 726
    invoke-static {p0, v0}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 727
    invoke-static {p0, v0}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 730
    :goto_1
    if-nez v0, :cond_6

    .line 732
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v2

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 727
    goto :goto_1

    .line 737
    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/main/MainActivity$12;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/main/MainActivity$12;-><init>(Lpl/jbzd/app/view/main/MainActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)V
    .locals 5

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2}, Lpl/jbzd/app/view/main/MainActivity;->a(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)Lpl/jbzd/app/view/a;

    move-result-object v1

    .line 383
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->RANDOM:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->WAITING:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    :cond_0
    if-eqz p2, :cond_4

    .line 386
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    iget-object v2, p2, Lpl/jbzd/app/view/menu/model/Item;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_1
    :goto_0
    if-eqz v1, :cond_b

    .line 403
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->f(I)V

    .line 404
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->a()Landroid/support/v4/app/y;

    move-result-object v2

    .line 406
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->SETTINGS:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v3, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v3}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 407
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iput-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->f:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    .line 413
    :goto_1
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    if-eq v0, p1, :cond_2

    .line 414
    :cond_2
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    .line 415
    iput-object p2, p0, Lpl/jbzd/app/view/main/MainActivity;->g:Lpl/jbzd/app/view/menu/model/Item;

    .line 418
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->f()Ljava/util/List;

    move-result-object v0

    .line 454
    const v3, 0x7f110181

    invoke-virtual {p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/y;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/y;

    .line 466
    instance-of v3, v1, Lpl/jbzd/app/view/settings/SettingsFragment;

    if-eqz v3, :cond_8

    .line 467
    iget-object v3, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 473
    :goto_2
    if-eqz v0, :cond_a

    .line 476
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 478
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 479
    invoke-virtual {v2, v0}, Landroid/support/v4/app/y;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/y;

    .line 481
    instance-of v4, v0, Lpl/jbzd/app/view/feed/FeedFragment;

    if-eqz v4, :cond_9

    .line 482
    check-cast v0, Lpl/jbzd/app/view/feed/FeedFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedFragment;->h()V

    goto :goto_3

    .line 389
    :cond_4
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    const v2, 0x7f0a00e8

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    goto :goto_0

    .line 392
    :cond_5
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->USER_PROFILE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 393
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    const v2, 0x7f0a00f1

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(I)V

    goto/16 :goto_0

    .line 395
    :cond_6
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->SETTINGS:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, p1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->txtToolbarTitle:Lpl/jbzd/core/ui/view/TextView;

    const v2, 0x7f0a00ed

    invoke-virtual {p0, v2}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpl/jbzd/core/ui/view/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 410
    :cond_7
    const v0, 0x7f050011

    const v3, 0x7f050012

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/y;->a(II)Landroid/support/v4/app/y;

    goto/16 :goto_1

    .line 470
    :cond_8
    iget-object v3, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_2

    .line 484
    :cond_9
    instance-of v4, v0, Lpl/jbzd/app/view/feed/FeedTopFragment;

    if-eqz v4, :cond_3

    .line 485
    check-cast v0, Lpl/jbzd/app/view/feed/FeedTopFragment;

    invoke-virtual {v0}, Lpl/jbzd/app/view/feed/FeedTopFragment;->e()V

    goto :goto_3

    .line 491
    :cond_a
    invoke-virtual {v2}, Landroid/support/v4/app/y;->b()I

    .line 496
    :cond_b
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const v3, 0x800003

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 748
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 750
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 751
    if-nez v0, :cond_1

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;-><init>()V

    .line 753
    :cond_1
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 755
    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->a(I)V

    .line 756
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 786
    :cond_2
    :goto_0
    return-void

    .line 761
    :cond_3
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 762
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->f(I)V

    .line 765
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_6

    .line 767
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 768
    invoke-static {p0, v0}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 769
    invoke-static {p0, v0}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 772
    :goto_1
    if-nez v0, :cond_6

    .line 774
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v0, v2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 769
    goto :goto_1

    .line 779
    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpl/jbzd/app/view/main/MainActivity$13;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/main/MainActivity$13;-><init>(Lpl/jbzd/app/view/main/MainActivity;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public f()V
    .locals 5

    .prologue
    .line 522
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/d;

    invoke-direct {v1}, Lpl/jbzd/app/view/menu/model/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/b;

    const v2, 0x7f0a00e7

    invoke-virtual {p0, v2}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lpl/jbzd/app/view/menu/model/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/Item;

    sget-object v2, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v2}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v2

    const v3, 0x7f020199

    const v4, 0x7f0a00e8

    invoke-virtual {p0, v4}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lpl/jbzd/app/view/menu/model/Item;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/Item;

    sget-object v2, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v2}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v2

    const v3, 0x7f020198

    const v4, 0x7f0a00e6

    invoke-virtual {p0, v4}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lpl/jbzd/app/view/menu/model/Item;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/Item;

    sget-object v2, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->WAITING:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v2}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v2

    const v3, 0x7f0201a0

    const v4, 0x7f0a00eb

    invoke-virtual {p0, v4}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lpl/jbzd/app/view/menu/model/Item;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/Item;

    sget-object v2, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->RANDOM:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v2}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v2

    const v3, 0x7f02019b

    const v4, 0x7f0a00e9

    invoke-virtual {p0, v4}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lpl/jbzd/app/view/menu/model/Item;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/Item;

    sget-object v2, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v2}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v2

    const v3, 0x7f02019f

    const v4, 0x7f0a00ea

    invoke-virtual {p0, v4}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lpl/jbzd/app/view/menu/model/Item;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/b;

    const v2, 0x7f0a00e4

    invoke-virtual {p0, v2}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lpl/jbzd/app/view/menu/model/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/Item;

    sget-object v2, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->CAMERA:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v2}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v2

    const v3, 0x7f020196

    const v4, 0x7f0a00e2

    invoke-virtual {p0, v4}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lpl/jbzd/app/view/menu/model/Item;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/Item;

    sget-object v2, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->GALLERY:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v2}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v2

    const v3, 0x7f02019c

    const v4, 0x7f0a00e3

    invoke-virtual {p0, v4}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lpl/jbzd/app/view/menu/model/Item;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/b;

    const v2, 0x7f0a00e5

    invoke-virtual {p0, v2}, Lpl/jbzd/app/view/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lpl/jbzd/app/view/menu/model/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v1, Lpl/jbzd/app/view/menu/model/c;

    invoke-direct {v1}, Lpl/jbzd/app/view/menu/model/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v0, Lpl/jbzd/app/view/menu/MenuAdapter;

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->k:Ljava/util/List;

    new-instance v2, Lpl/jbzd/app/view/main/MainActivity$9;

    invoke-direct {v2, p0}, Lpl/jbzd/app/view/main/MainActivity$9;-><init>(Lpl/jbzd/app/view/main/MainActivity;)V

    invoke-direct {v0, v1, v2}, Lpl/jbzd/app/view/menu/MenuAdapter;-><init>(Ljava/util/List;Lpl/jbzd/app/view/menu/MenuAdapter$a;)V

    .line 656
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v1

    new-instance v2, Lpl/jbzd/app/view/main/MainActivity$10;

    invoke-direct {v2, p0, v0}, Lpl/jbzd/app/view/main/MainActivity$10;-><init>(Lpl/jbzd/app/view/main/MainActivity;Lpl/jbzd/app/view/menu/MenuAdapter;)V

    invoke-virtual {v1, v2}, Lpl/jbzd/api/ApiClient;->addLoginCallback(Lpl/jbzd/api/auth/LoginCallback;)V

    .line 682
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getInstance()Lpl/jbzd/api/ApiClient;

    move-result-object v1

    new-instance v2, Lpl/jbzd/app/view/main/MainActivity$11;

    invoke-direct {v2, p0, v0}, Lpl/jbzd/app/view/main/MainActivity$11;-><init>(Lpl/jbzd/app/view/main/MainActivity;Lpl/jbzd/app/view/menu/MenuAdapter;)V

    invoke-virtual {v1, v2}, Lpl/jbzd/api/ApiClient;->addLogoutCallback(Lpl/jbzd/api/auth/LogoutCallback;)V

    .line 701
    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->rvMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 702
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 790
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/main/MainActivity$2;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/main/MainActivity$2;-><init>(Lpl/jbzd/app/view/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->a(Landroid/support/v4/app/u$b;)V

    .line 798
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lpl/jbzd/app/view/main/MainActivity$3;

    invoke-direct {v1, p0}, Lpl/jbzd/app/view/main/MainActivity$3;-><init>(Lpl/jbzd/app/view/main/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3}, Lpl/jbzd/app/view/menu/MenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 242
    new-instance v0, Lpl/jbzd/app/view/main/MainActivity$7;

    invoke-direct {v0, p0}, Lpl/jbzd/app/view/main/MainActivity$7;-><init>(Lpl/jbzd/app/view/main/MainActivity;)V

    invoke-static {p1, p2, p3, p0, v0}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(IILandroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$a;)V

    .line 273
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const v1, 0x800003

    const/4 v4, 0x0

    .line 326
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->f(I)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->e()I

    move-result v0

    .line 332
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->SETTINGS:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/u;->c()V

    .line 335
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 337
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/u;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->f:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_0

    instance-of v1, v0, Lpl/jbzd/app/b/a;

    if-eqz v1, :cond_0

    .line 341
    check-cast v0, Lpl/jbzd/app/b/a;

    .line 342
    invoke-interface {v0}, Lpl/jbzd/app/b/a;->a()Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    move-result-object v1

    invoke-interface {v0}, Lpl/jbzd/app/b/a;->b()Lpl/jbzd/app/view/menu/model/Item;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lpl/jbzd/app/view/main/MainActivity;->b(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)V

    goto :goto_0

    .line 345
    :cond_2
    iget-wide v0, p0, Lpl/jbzd/app/view/main/MainActivity;->i:J

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpl/jbzd/app/view/main/MainActivity;->i:J

    .line 348
    const v0, 0x7f0a00da

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 351
    :cond_3
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 111
    invoke-super {p0, p1}, Lpl/jbzd/app/view/menu/MenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-static {}, Lpl/jbzd/a/b;->a()Lpl/jbzd/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpl/jbzd/a/b;->a(Landroid/app/Activity;)V

    .line 113
    const v0, 0x7f040065

    invoke-virtual {p0, v0}, Lpl/jbzd/app/view/main/MainActivity;->setContentView(I)V

    .line 114
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    .line 115
    sput-boolean v4, Lpl/jbzd/app/view/main/MainActivity;->d:Z

    .line 117
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "ARG_MEDIA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Media;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    if-eqz v0, :cond_0

    .line 126
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lpl/jbzd/app/view/gallery/GalleryActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const-string v3, "ARG_MEDIA"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    const/16 v0, 0x141

    invoke-virtual {p0, v2, v0}, Lpl/jbzd/app/view/main/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    invoke-virtual {p0, v4, v4}, Lpl/jbzd/app/view/main/MainActivity;->overridePendingTransition(II)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->a()V

    .line 134
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->f()V

    .line 135
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->g()V

    .line 137
    new-instance v0, Lpl/jbzd/app/view/main/MainActivity$1;

    invoke-direct {v0, p0}, Lpl/jbzd/app/view/main/MainActivity$1;-><init>(Lpl/jbzd/app/view/main/MainActivity;)V

    iput-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->j:Landroid/content/BroadcastReceiver;

    .line 165
    if-eqz p1, :cond_2

    .line 167
    const-string v0, "ARG_CURRENT_FRAGMENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iput-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    .line 168
    const-string v0, "ARG_PREVIOUS_FRAGMENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iput-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->f:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    .line 169
    const-string v0, "ARG_ITEM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/view/menu/model/Item;

    iput-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->g:Lpl/jbzd/app/view/menu/model/Item;

    .line 178
    :goto_1
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->g:Lpl/jbzd/app/view/menu/model/Item;

    invoke-virtual {p0, v0, v1}, Lpl/jbzd/app/view/main/MainActivity;->b(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)V

    .line 179
    invoke-direct {p0}, Lpl/jbzd/app/view/main/MainActivity;->i()V

    .line 197
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v0

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lpl/jbzd/api/ApiService;->user_sign_in(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/app/view/main/MainActivity$6;

    invoke-direct {v1, p0, p0}, Lpl/jbzd/app/view/main/MainActivity$6;-><init>(Lpl/jbzd/app/view/main/MainActivity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 209
    :cond_1
    return-void

    .line 122
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 173
    :cond_2
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iput-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    .line 174
    sget-object v0, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    iput-object v0, p0, Lpl/jbzd/app/view/main/MainActivity;->f:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    .line 175
    iput-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->g:Lpl/jbzd/app/view/menu/model/Item;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 278
    invoke-static {p0}, Lpl/jbzd/app/MyApplication;->a(Landroid/content/Context;)Lpl/jbzd/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpl/jbzd/b/b;->c(Landroid/content/Context;)V

    .line 279
    invoke-static {}, Lpl/jbzd/a/b;->a()Lpl/jbzd/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpl/jbzd/a/b;->e(Landroid/app/Activity;)V

    .line 281
    sget-boolean v0, Lpl/jbzd/app/view/main/MainActivity;->d:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->clearCaches()V

    .line 291
    :cond_0
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    invoke-static {}, Lio/realm/l;->k()Lio/realm/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/l;->close()V

    .line 295
    :cond_1
    invoke-super {p0}, Lpl/jbzd/app/view/menu/MenuActivity;->onDestroy()V

    .line 297
    sget-boolean v0, Lpl/jbzd/app/view/main/MainActivity;->d:Z

    if-eqz v0, :cond_2

    .line 299
    const/4 v0, 0x0

    sput-boolean v0, Lpl/jbzd/app/view/main/MainActivity;->d:Z

    .line 300
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/a;->d(Landroid/content/Context;)V

    .line 302
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 224
    invoke-static {}, Lpl/jbzd/a/b;->a()Lpl/jbzd/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpl/jbzd/a/b;->c(Landroid/app/Activity;)V

    .line 225
    invoke-static {p0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/l;->a(Landroid/content/BroadcastReceiver;)V

    .line 226
    invoke-super {p0}, Lpl/jbzd/app/view/menu/MenuActivity;->onPause()V

    .line 227
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 214
    invoke-super {p0}, Lpl/jbzd/app/view/menu/MenuActivity;->onResume()V

    .line 215
    invoke-static {}, Lpl/jbzd/a/b;->a()Lpl/jbzd/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpl/jbzd/a/b;->b(Landroid/app/Activity;)V

    .line 216
    invoke-static {p0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->j:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "registrationComplete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/l;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 217
    invoke-static {p0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->j:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "pushNotification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/l;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 218
    invoke-virtual {p0}, Lpl/jbzd/app/view/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpl/jbzd/core/a/d;->b(Landroid/content/Context;)V

    .line 219
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0, p1}, Lpl/jbzd/app/view/menu/MenuActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 311
    :try_start_0
    const-string v0, "ARG_CURRENT_FRAGMENT"

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->e:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 312
    const-string v0, "ARG_PREVIOUS_FRAGMENT"

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->f:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 313
    const-string v0, "ARG_ITEM"

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity;->g:Lpl/jbzd/app/view/menu/model/Item;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 317
    const-string v0, "ARG_CURRENT_FRAGMENT"

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 318
    const-string v0, "ARG_PREVIOUS_FRAGMENT"

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 319
    const-string v0, "ARG_ITEM"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lpl/jbzd/app/view/menu/MenuActivity;->onStop()V

    .line 233
    invoke-static {}, Lpl/jbzd/a/b;->a()Lpl/jbzd/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpl/jbzd/a/b;->d(Landroid/app/Activity;)V

    .line 234
    return-void
.end method
