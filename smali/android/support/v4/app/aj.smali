.class public Landroid/support/v4/app/aj;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/aj$a;,
        Landroid/support/v4/app/aj$f;,
        Landroid/support/v4/app/aj$g;,
        Landroid/support/v4/app/aj$c;,
        Landroid/support/v4/app/aj$b;,
        Landroid/support/v4/app/aj$q;,
        Landroid/support/v4/app/aj$d;,
        Landroid/support/v4/app/aj$k;,
        Landroid/support/v4/app/aj$j;,
        Landroid/support/v4/app/aj$i;,
        Landroid/support/v4/app/aj$p;,
        Landroid/support/v4/app/aj$o;,
        Landroid/support/v4/app/aj$n;,
        Landroid/support/v4/app/aj$m;,
        Landroid/support/v4/app/aj$l;,
        Landroid/support/v4/app/aj$e;,
        Landroid/support/v4/app/aj$h;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/app/aj$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 948
    invoke-static {}, Landroid/support/v4/os/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    new-instance v0, Landroid/support/v4/app/aj$k;

    invoke-direct {v0}, Landroid/support/v4/app/aj$k;-><init>()V

    sput-object v0, Landroid/support/v4/app/aj;->a:Landroid/support/v4/app/aj$h;

    .line 965
    :goto_0
    return-void

    .line 950
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 951
    new-instance v0, Landroid/support/v4/app/aj$j;

    invoke-direct {v0}, Landroid/support/v4/app/aj$j;-><init>()V

    sput-object v0, Landroid/support/v4/app/aj;->a:Landroid/support/v4/app/aj$h;

    goto :goto_0

    .line 952
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 953
    new-instance v0, Landroid/support/v4/app/aj$i;

    invoke-direct {v0}, Landroid/support/v4/app/aj$i;-><init>()V

    sput-object v0, Landroid/support/v4/app/aj;->a:Landroid/support/v4/app/aj$h;

    goto :goto_0

    .line 954
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 955
    new-instance v0, Landroid/support/v4/app/aj$p;

    invoke-direct {v0}, Landroid/support/v4/app/aj$p;-><init>()V

    sput-object v0, Landroid/support/v4/app/aj;->a:Landroid/support/v4/app/aj$h;

    goto :goto_0

    .line 956
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 957
    new-instance v0, Landroid/support/v4/app/aj$o;

    invoke-direct {v0}, Landroid/support/v4/app/aj$o;-><init>()V

    sput-object v0, Landroid/support/v4/app/aj;->a:Landroid/support/v4/app/aj$h;

    goto :goto_0

    .line 958
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    .line 959
    new-instance v0, Landroid/support/v4/app/aj$n;

    invoke-direct {v0}, Landroid/support/v4/app/aj$n;-><init>()V

    sput-object v0, Landroid/support/v4/app/aj;->a:Landroid/support/v4/app/aj$h;

    goto :goto_0

    .line 960
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    .line 961
    new-instance v0, Landroid/support/v4/app/aj$m;

    invoke-direct {v0}, Landroid/support/v4/app/aj$m;-><init>()V

    sput-object v0, Landroid/support/v4/app/aj;->a:Landroid/support/v4/app/aj$h;

    goto :goto_0

    .line 963
    :cond_6
    new-instance v0, Landroid/support/v4/app/aj$l;

    invoke-direct {v0}, Landroid/support/v4/app/aj$l;-><init>()V

    sput-object v0, Landroid/support/v4/app/aj;->a:Landroid/support/v4/app/aj$h;

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 4105
    sget-object v0, Landroid/support/v4/app/aj;->a:Landroid/support/v4/app/aj$h;

    invoke-interface {v0, p0}, Landroid/support/v4/app/aj$h;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/support/v4/app/ah;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ah;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/aj$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 885
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aj$a;

    .line 886
    invoke-interface {p0, v0}, Landroid/support/v4/app/ah;->a(Landroid/support/v4/app/an$a;)V

    goto :goto_0

    .line 888
    :cond_0
    return-void
.end method

.method static a(Landroid/support/v4/app/ai;Landroid/support/v4/app/aj$q;)V
    .locals 7

    .prologue
    .line 892
    if-eqz p1, :cond_0

    .line 893
    instance-of v0, p1, Landroid/support/v4/app/aj$c;

    if-eqz v0, :cond_1

    .line 894
    check-cast p1, Landroid/support/v4/app/aj$c;

    .line 895
    iget-object v0, p1, Landroid/support/v4/app/aj$c;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/aj$c;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/aj$c;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/aj$c;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/aq;->a(Landroid/support/v4/app/ai;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/aj$f;

    if-eqz v0, :cond_2

    .line 901
    check-cast p1, Landroid/support/v4/app/aj$f;

    .line 902
    iget-object v0, p1, Landroid/support/v4/app/aj$f;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/aj$f;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/aj$f;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/aj$f;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/aq;->a(Landroid/support/v4/app/ai;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 907
    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/aj$b;

    if-eqz v0, :cond_0

    .line 908
    check-cast p1, Landroid/support/v4/app/aj$b;

    .line 909
    iget-object v1, p1, Landroid/support/v4/app/aj$b;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/aj$b;->g:Z

    iget-object v3, p1, Landroid/support/v4/app/aj$b;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/aj$b;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/aj$b;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/aj$b;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/aq;->a(Landroid/support/v4/app/ai;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method static b(Landroid/support/v4/app/ai;Landroid/support/v4/app/aj$q;)V
    .locals 10

    .prologue
    .line 922
    if-eqz p1, :cond_1

    .line 923
    instance-of v0, p1, Landroid/support/v4/app/aj$g;

    if-eqz v0, :cond_2

    .line 924
    check-cast p1, Landroid/support/v4/app/aj$g;

    .line 925
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 926
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 927
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 928
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 929
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 931
    iget-object v0, p1, Landroid/support/v4/app/aj$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aj$g$a;

    .line 932
    invoke-virtual {v0}, Landroid/support/v4/app/aj$g$a;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-virtual {v0}, Landroid/support/v4/app/aj$g$a;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    invoke-virtual {v0}, Landroid/support/v4/app/aj$g$a;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-virtual {v0}, Landroid/support/v4/app/aj$g$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    invoke-virtual {v0}, Landroid/support/v4/app/aj$g$a;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 938
    :cond_0
    iget-object v1, p1, Landroid/support/v4/app/aj$g;->a:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/support/v4/app/aj$g;->b:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/am;->a(Landroid/support/v4/app/ai;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 945
    :cond_1
    :goto_1
    return-void

    .line 942
    :cond_2
    invoke-static {p0, p1}, Landroid/support/v4/app/aj;->a(Landroid/support/v4/app/ai;Landroid/support/v4/app/aj$q;)V

    goto :goto_1
.end method
