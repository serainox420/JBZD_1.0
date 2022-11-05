.class public Lcom/flurry/sdk/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/hd$e;,
        Lcom/flurry/sdk/hd$b;,
        Lcom/flurry/sdk/hd$a;,
        Lcom/flurry/sdk/hd$d;,
        Lcom/flurry/sdk/hd$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/ViewGroup;",
            ">;",
            "Lcom/flurry/sdk/hd$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const-class v0, Lcom/flurry/sdk/hd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hd;->a:Ljava/lang/String;

    .line 6297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6298
    const-class v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/flurry/sdk/hd$d;

    invoke-direct {v2}, Lcom/flurry/sdk/hd$d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6299
    const-class v1, Landroid/widget/AbsoluteLayout;

    new-instance v2, Lcom/flurry/sdk/hd$a;

    invoke-direct {v2}, Lcom/flurry/sdk/hd$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6300
    const-class v1, Landroid/widget/FrameLayout;

    new-instance v2, Lcom/flurry/sdk/hd$b;

    invoke-direct {v2}, Lcom/flurry/sdk/hd$b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6301
    const-class v1, Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/flurry/sdk/hd$e;

    invoke-direct {v2}, Lcom/flurry/sdk/hd$e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6302
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 38
    sput-object v0, Lcom/flurry/sdk/hd;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/flurry/sdk/hd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/flurry/sdk/s;)V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 41
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 5089
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-interface {p1}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    .line 2078
    iget-object v0, v4, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3058
    iget-object v6, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 47
    iget-object v0, v6, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    .line 49
    iget v7, v0, Lcom/flurry/sdk/cn;->a:I

    .line 50
    iget-object v1, v0, Lcom/flurry/sdk/cn;->c:Ljava/lang/String;

    .line 52
    iget-object v0, v0, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    .line 53
    invoke-static {v0}, Lcom/flurry/sdk/fi;->a(Lcom/flurry/sdk/cr;)Lcom/flurry/android/AdCreative;

    move-result-object v5

    .line 56
    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v0

    .line 3064
    iget-object v8, v0, Lcom/flurry/sdk/j;->b:Lcom/flurry/android/ICustomAdNetworkHandler;

    .line 57
    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    .line 3283
    invoke-static {}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/ec;

    move-result-object v0

    .line 3284
    if-eqz v0, :cond_3

    .line 4249
    iget-object v0, v0, Lcom/flurry/sdk/ec;->e:Lcom/flurry/sdk/hc;

    .line 61
    :goto_1
    if-ne v7, v9, :cond_4

    if-eqz v8, :cond_4

    .line 62
    invoke-interface {v8, p0, v5, v1}, Lcom/flurry/android/ICustomAdNetworkHandler;->getAdFromNetwork(Landroid/content/Context;Lcom/flurry/android/AdCreative;Ljava/lang/String;)Lcom/flurry/android/AdNetworkView;

    move-result-object v0

    move-object v5, v0

    .line 67
    :goto_2
    if-nez v5, :cond_5

    .line 68
    sget-object v0, Lcom/flurry/sdk/hd;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create view for ad network: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network is unsupported on Android, or no ICustomAdNetworkHandler was registered or it failed to return a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/km;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string v0, "errorCode"

    sget-object v2, Lcom/flurry/sdk/bb;->o:Lcom/flurry/sdk/bb;

    .line 5040
    iget v2, v2, Lcom/flurry/sdk/bb;->z:I

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    if-ne v7, v9, :cond_2

    .line 78
    const-string v0, "binding_3rd_party"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_2
    sget-object v0, Lcom/flurry/sdk/bc;->g:Lcom/flurry/sdk/bc;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/ff;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;I)V

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 3288
    goto :goto_1

    .line 64
    :cond_4
    invoke-interface {v0, p0, p1}, Lcom/flurry/sdk/hc;->b(Landroid/content/Context;Lcom/flurry/sdk/r;)Lcom/flurry/sdk/gz;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    .line 5088
    :cond_5
    if-eqz p1, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 5092
    invoke-interface {p1}, Lcom/flurry/sdk/s;->g()Landroid/view/ViewGroup;

    move-result-object v4

    .line 5095
    invoke-interface {p1}, Lcom/flurry/sdk/s;->u()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 5096
    if-nez v0, :cond_10

    .line 5097
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-interface {p1}, Lcom/flurry/sdk/s;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 5098
    invoke-interface {p1, v0}, Lcom/flurry/sdk/s;->a(Landroid/widget/RelativeLayout;)V

    move-object v1, v0

    .line 5101
    :goto_3
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5102
    if-eqz v0, :cond_6

    .line 5103
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5106
    :cond_6
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 5108
    invoke-virtual {v5}, Lcom/flurry/sdk/gz;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5109
    if-eqz v0, :cond_7

    .line 5110
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5113
    :cond_7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5115
    invoke-virtual {v5}, Lcom/flurry/sdk/gz;->initLayout()V

    .line 5152
    if-eqz v6, :cond_8

    iget-object v0, v6, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    :cond_8
    move-object v0, v3

    .line 5118
    :goto_4
    if-eqz v0, :cond_9

    .line 5119
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5120
    const/4 v3, 0x3

    sget-object v5, Lcom/flurry/sdk/hd;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "banner ad holder layout params = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " {width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "} for banner ad with adSpaceName = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5123
    invoke-interface {p1}, Lcom/flurry/sdk/s;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5120
    invoke-static {v3, v5, v0}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 5127
    :cond_9
    const/high16 v0, 0x16000000

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 6132
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 6133
    if-eqz v6, :cond_a

    iget-object v0, v6, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_a
    move v0, v3

    .line 5128
    :goto_5
    invoke-virtual {v4, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 5156
    :cond_b
    iget-object v0, v6, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    iget-object v5, v0, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    .line 5157
    if-nez v5, :cond_c

    move-object v0, v3

    .line 5158
    goto :goto_4

    .line 5180
    :cond_c
    sget-object v0, Lcom/flurry/sdk/hd;->b:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hd$c;

    .line 5162
    if-nez v0, :cond_d

    .line 5163
    const/4 v0, 0x5

    sget-object v5, Lcom/flurry/sdk/hd;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ad space layout and alignment from the server is being ignored for ViewGroup subclass "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5165
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5163
    invoke-static {v0, v5, v7}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 5166
    goto/16 :goto_4

    .line 5169
    :cond_d
    invoke-virtual {v0, v5}, Lcom/flurry/sdk/hd$c;->a(Lcom/flurry/sdk/cr;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto/16 :goto_4

    .line 6137
    :cond_e
    iget-object v0, v6, Lcom/flurry/sdk/cs;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/cn;

    iget-object v0, v0, Lcom/flurry/sdk/cn;->d:Lcom/flurry/sdk/cr;

    .line 6138
    if-eqz v0, :cond_f

    .line 6139
    iget-object v0, v0, Lcom/flurry/sdk/cr;->e:Ljava/lang/String;

    .line 6140
    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6141
    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 6142
    const-string v5, "t"

    aget-object v0, v0, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    .line 6143
    goto :goto_5

    :cond_f
    move v0, v3

    goto :goto_5

    :cond_10
    move-object v1, v0

    goto/16 :goto_3
.end method
