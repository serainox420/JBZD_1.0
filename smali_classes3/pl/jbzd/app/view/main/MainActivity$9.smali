.class Lpl/jbzd/app/view/main/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lpl/jbzd/app/view/menu/MenuAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/main/MainActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/main/MainActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/main/MainActivity;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x800003

    .line 578
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Menu"

    .line 580
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "ustawienia"

    .line 581
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 579
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 585
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->f(I)V

    .line 589
    :cond_1
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    const-class v3, Lpl/jbzd/app/view/settings/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 590
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    const v1, 0x7f050010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/view/main/MainActivity;->overridePendingTransition(II)V

    .line 592
    return-void
.end method

.method public a(Landroid/view/View;Lpl/jbzd/app/view/menu/model/Item;I)V
    .locals 3

    .prologue
    .line 543
    iget v0, p2, Lpl/jbzd/app/view/menu/model/Item;->b:I

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 544
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->HOME:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1, p2}, Lpl/jbzd/app/view/main/MainActivity;->b(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget v0, p2, Lpl/jbzd/app/view/menu/model/Item;->b:I

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->RANDOM:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 547
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->RANDOM:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1, p2}, Lpl/jbzd/app/view/main/MainActivity;->b(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)V

    goto :goto_0

    .line 549
    :cond_2
    iget v0, p2, Lpl/jbzd/app/view/menu/model/Item;->b:I

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->WAITING:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 550
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->WAITING:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1, p2}, Lpl/jbzd/app/view/main/MainActivity;->b(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)V

    goto :goto_0

    .line 552
    :cond_3
    iget v0, p2, Lpl/jbzd/app/view/menu/model/Item;->b:I

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 553
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->TOP:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1, p2}, Lpl/jbzd/app/view/main/MainActivity;->b(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)V

    goto :goto_0

    .line 555
    :cond_4
    iget v0, p2, Lpl/jbzd/app/view/menu/model/Item;->b:I

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 557
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 558
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->FAVORITE:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v0, v1, p2}, Lpl/jbzd/app/view/main/MainActivity;->b(Lpl/jbzd/app/view/main/MainActivity$FragmentType;Lpl/jbzd/app/view/menu/model/Item;)V

    goto :goto_0

    .line 562
    :cond_5
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 563
    if-nez v0, :cond_6

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;-><init>()V

    .line 564
    :cond_6
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 567
    :cond_7
    iget v0, p2, Lpl/jbzd/app/view/menu/model/Item;->b:I

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->CAMERA:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 568
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->b()V

    goto/16 :goto_0

    .line 570
    :cond_8
    iget v0, p2, Lpl/jbzd/app/view/menu/model/Item;->b:I

    sget-object v1, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->GALLERY:Lpl/jbzd/app/view/main/MainActivity$FragmentType;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity$FragmentType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 571
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->c()V

    goto/16 :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-static {v0}, Lpl/jbzd/app/view/main/MainActivity;->b(Lpl/jbzd/app/view/main/MainActivity;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-static {v0}, Lpl/jbzd/app/view/main/MainActivity;->c(Lpl/jbzd/app/view/main/MainActivity;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Menu"

    .line 599
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "logowanie"

    .line 600
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 601
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 598
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 604
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-class v1, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    .line 605
    if-nez v0, :cond_1

    new-instance v0, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-direct {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;-><init>()V

    .line 606
    :cond_1
    invoke-virtual {v0}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lpl/jbzd/app/ui/view/dialog/SignInDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/ui/view/dialog/SignInDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 607
    :cond_2
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .prologue
    const v1, 0x800003

    .line 618
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    iget-object v0, v0, Lpl/jbzd/app/view/main/MainActivity;->layDrawer:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->f(I)V

    .line 622
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    const-class v2, Lpl/jbzd/app/view/user/UserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 623
    const-string v1, "ARG_USER_ID"

    invoke-static {}, Lpl/jbzd/api/ApiClient;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v1, v0}, Lpl/jbzd/app/view/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 625
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    const v1, 0x7f050010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lpl/jbzd/app/view/main/MainActivity;->overridePendingTransition(II)V

    .line 626
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 631
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Menu"

    .line 633
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "polubienie fanpage"

    .line 634
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "menu"

    .line 635
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 632
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 639
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    const-string v2, "136504313116407"

    const-string v3, "jebzdzidy"

    invoke-static {v1, v2, v3}, Lpl/jbzd/core/a/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 640
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 645
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->e()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Menu"

    .line 647
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Instagram"

    .line 648
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 649
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 646
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 652
    :cond_0
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$9;->a:Lpl/jbzd/app/view/main/MainActivity;

    const-string v2, "jbzd.pl"

    invoke-static {v1, v2}, Lpl/jbzd/core/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpl/jbzd/app/view/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 653
    return-void
.end method
