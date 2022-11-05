.class Lcom/adcolony/sdk/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/cm$b;,
        Lcom/adcolony/sdk/cm$a;,
        Lcom/adcolony/sdk/cm$c;,
        Lcom/adcolony/sdk/cm$d;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "position"

.field private static final B:Ljava/lang/String; = "animation_in"

.field private static final C:Ljava/lang/String; = "animation_out"

.field private static final D:Ljava/lang/String; = "scaling"

.field private static final E:Ljava/lang/String; = "presentation_delay_ms"

.field private static final F:Ljava/lang/String; = "modal_background_color_rgba"

.field private static final G:Ljava/lang/String; = "slug"

.field private static final H:Ljava/lang/String; = "metadata"

.field private static final I:Ljava/lang/String; = "close_method"

.field private static final J:Ljava/lang/String; = "messageId"

.field private static final K:Ljava/lang/String; = "swipe_direction"

.field private static final L:Ljava/lang/String; = "swipe_enabled"

.field private static final M:I = 0x0

.field private static final N:I = 0x1

.field private static final O:I = 0x2

.field private static final P:I = 0x4

.field private static final Q:I = 0x8

.field private static final R:Landroid/view/animation/AlphaAnimation;

.field private static final S:Landroid/view/animation/AlphaAnimation;

.field private static final T:Landroid/view/animation/TranslateAnimation;

.field private static final U:Landroid/view/animation/TranslateAnimation;

.field private static final V:Landroid/view/animation/TranslateAnimation;

.field private static final W:Landroid/view/animation/TranslateAnimation;

.field static final k:Landroid/view/animation/TranslateAnimation;

.field static final l:Landroid/view/animation/TranslateAnimation;

.field static final m:Landroid/view/animation/TranslateAnimation;

.field static final n:Landroid/view/animation/TranslateAnimation;

.field static final o:Landroid/view/animation/TranslateAnimation;

.field private static final r:Ljava/lang/String; = "time_to_click_ms"

.field private static final s:Ljava/lang/String; = "source_id"

.field private static final t:Ljava/lang/String; = "duration_ms"

.field private static final u:Ljava/lang/String; = "duration_animation_in_ms"

.field private static final v:Ljava/lang/String; = "duration_animation_out_ms"

.field private static final w:Ljava/lang/String; = "width"

.field private static final x:Ljava/lang/String; = "height"

.field private static final y:Ljava/lang/String; = "type"

.field private static final z:Ljava/lang/String; = "display_type_s"


# instance fields
.field a:Lcom/adcolony/sdk/cm$a;

.field b:Lcom/adcolony/sdk/cm$c;

.field c:J

.field d:J

.field e:J

.field f:J

.field g:Z

.field h:I

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field j:Lcom/adcolony/sdk/cm$d;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/adcolony/sdk/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 96
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->R:Landroid/view/animation/AlphaAnimation;

    .line 97
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->S:Landroid/view/animation/AlphaAnimation;

    .line 98
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->T:Landroid/view/animation/TranslateAnimation;

    .line 103
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->U:Landroid/view/animation/TranslateAnimation;

    .line 108
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->V:Landroid/view/animation/TranslateAnimation;

    .line 113
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->W:Landroid/view/animation/TranslateAnimation;

    .line 118
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->k:Landroid/view/animation/TranslateAnimation;

    .line 123
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->l:Landroid/view/animation/TranslateAnimation;

    .line 128
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->m:Landroid/view/animation/TranslateAnimation;

    .line 133
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->n:Landroid/view/animation/TranslateAnimation;

    .line 138
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    sput-object v0, Lcom/adcolony/sdk/cm;->o:Landroid/view/animation/TranslateAnimation;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/adcolony/sdk/cm$a;->a:Lcom/adcolony/sdk/cm$a;

    iput-object v0, p0, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    .line 51
    sget-object v0, Lcom/adcolony/sdk/cm$c;->a:Lcom/adcolony/sdk/cm$c;

    iput-object v0, p0, Lcom/adcolony/sdk/cm;->b:Lcom/adcolony/sdk/cm$c;

    .line 52
    iput-wide v2, p0, Lcom/adcolony/sdk/cm;->c:J

    .line 53
    iput-wide v2, p0, Lcom/adcolony/sdk/cm;->d:J

    .line 54
    iput-wide v2, p0, Lcom/adcolony/sdk/cm;->e:J

    .line 55
    iput-wide v2, p0, Lcom/adcolony/sdk/cm;->f:J

    .line 64
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->at()Lcom/adcolony/sdk/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    .line 164
    iput-object p1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    .line 165
    new-instance v0, Lcom/adcolony/sdk/cm$b;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/cm$b;-><init>(Lcom/adcolony/sdk/cm;)V

    iput-object v0, p0, Lcom/adcolony/sdk/cm;->j:Lcom/adcolony/sdk/cm$d;

    .line 166
    invoke-direct {p0}, Lcom/adcolony/sdk/cm;->E()V

    .line 167
    return-void
.end method

.method private E()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "swipe_enabled"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "swipe_enabled"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/cm;->g:Z

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "swipe_direction"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "swipe_direction"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/cm;->h:I

    .line 181
    :goto_1
    return-void

    .line 173
    :cond_0
    iput-boolean v2, p0, Lcom/adcolony/sdk/cm;->g:Z

    goto :goto_0

    .line 179
    :cond_1
    iput v2, p0, Lcom/adcolony/sdk/cm;->h:I

    goto :goto_1
.end method

.method private F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method


# virtual methods
.method A()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 635
    iget v1, p0, Lcom/adcolony/sdk/cm;->h:I

    and-int/lit8 v1, v1, 0x4

    .line 636
    const-string v2, "TEST-SWIPE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " swipeDirections="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/adcolony/sdk/cm;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DIR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 637
    if-eqz v1, :cond_0

    .line 638
    :goto_0
    return v0

    .line 637
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method B()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 642
    iget v1, p0, Lcom/adcolony/sdk/cm;->h:I

    and-int/lit8 v1, v1, 0x2

    .line 643
    const-string v2, "TEST-SWIPE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " swipeDirections="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/adcolony/sdk/cm;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DIR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 644
    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method C()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 648
    iget v1, p0, Lcom/adcolony/sdk/cm;->h:I

    and-int/lit8 v1, v1, 0x8

    .line 649
    const-string v2, "TEST-SWIPE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " swipeDirections="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/adcolony/sdk/cm;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DIR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 650
    if-eqz v1, :cond_0

    .line 651
    :goto_0
    return v0

    .line 650
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method D()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 655
    iget v1, p0, Lcom/adcolony/sdk/cm;->h:I

    and-int/lit8 v1, v1, 0x1

    .line 656
    const-string v2, "TEST-SWIPE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " swipeDirections="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/adcolony/sdk/cm;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DIR="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 657
    if-eqz v1, :cond_0

    .line 658
    :goto_0
    return v0

    .line 657
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(I)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 305
    sparse-switch p1, :sswitch_data_0

    .line 326
    sget-object v0, Lcom/adcolony/sdk/cm;->o:Landroid/view/animation/TranslateAnimation;

    .line 329
    :goto_0
    return-object v0

    .line 307
    :sswitch_0
    sget-object v0, Lcom/adcolony/sdk/cm;->R:Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 311
    :sswitch_1
    sget-object v0, Lcom/adcolony/sdk/cm;->T:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 315
    :sswitch_2
    sget-object v0, Lcom/adcolony/sdk/cm;->V:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 319
    :sswitch_3
    sget-object v0, Lcom/adcolony/sdk/cm;->U:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 323
    :sswitch_4
    sget-object v0, Lcom/adcolony/sdk/cm;->W:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_4
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method a(Lcom/adcolony/sdk/cm$a;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    const-string v0, "INVALID"

    .line 334
    sget-object v1, Lcom/adcolony/sdk/cm$1;->a:[I

    invoke-virtual {p1}, Lcom/adcolony/sdk/cm$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 383
    :goto_0
    return-object v0

    .line 336
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 339
    :pswitch_1
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 342
    :pswitch_2
    const-string v0, "USER_SWIPE"

    goto :goto_0

    .line 345
    :pswitch_3
    const-string v0, "USER_SWIPE_LEFT"

    goto :goto_0

    .line 348
    :pswitch_4
    const-string v0, "USER_SWIPE_RIGHT"

    goto :goto_0

    .line 351
    :pswitch_5
    const-string v0, "USER_SWIPE_UP"

    goto :goto_0

    .line 354
    :pswitch_6
    const-string v0, "USER_SWIPE_DOWN"

    goto :goto_0

    .line 357
    :pswitch_7
    const-string v0, "USER_CLOSE_BUTTON"

    goto :goto_0

    .line 360
    :pswitch_8
    const-string v0, "USER_TAP_BACKGROUND"

    goto :goto_0

    .line 363
    :pswitch_9
    const-string v0, "REDIRECT_TO_CATALOG"

    goto :goto_0

    .line 366
    :pswitch_a
    const-string v0, "DEV_REDEMPTION"

    goto :goto_0

    .line 369
    :pswitch_b
    const-string v0, "NATURAL_TIMEOUT"

    goto :goto_0

    .line 372
    :pswitch_c
    const-string v0, "FROM_JS"

    goto :goto_0

    .line 375
    :pswitch_d
    const-string v0, "HARDWARE_BACK_BUTTON"

    goto :goto_0

    .line 378
    :pswitch_e
    const-string v0, "ACTIVITY_HIDDEN"

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method a()V
    .locals 4

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/adcolony/sdk/cm;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adcolony/sdk/cm;->e:J

    .line 187
    :cond_0
    return-void
.end method

.method a(Lcom/adcolony/sdk/cm$d;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/adcolony/sdk/cm;->j:Lcom/adcolony/sdk/cm$d;

    .line 585
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 627
    iput-boolean p1, p0, Lcom/adcolony/sdk/cm;->g:Z

    .line 628
    return-void
.end method

.method b()I
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->a()I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "duration_ms"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "duration_ms"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 204
    :cond_0
    return v0
.end method

.method b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    const-string v0, ""

    .line 396
    if-nez p1, :cond_1

    .line 397
    const-string v0, "NONE"

    .line 406
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 399
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "HEIGHT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WIDTH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "notification"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    :cond_0
    return-object v0
.end method

.method c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    const-string v0, "INVALID"

    .line 419
    packed-switch p1, :pswitch_data_0

    .line 441
    :goto_0
    return-object v0

    .line 421
    :pswitch_0
    const-string v0, "IAP_REWARD"

    goto :goto_0

    .line 424
    :pswitch_1
    const-string v0, "CUSTOM_REWARD"

    goto :goto_0

    .line 427
    :pswitch_2
    const-string v0, "ANNOUNCEMENT"

    goto :goto_0

    .line 430
    :pswitch_3
    const-string v0, "SHOW_BADGE"

    goto :goto_0

    .line 433
    :pswitch_4
    const-string v0, "ACTIVITY_COMPLETE"

    goto :goto_0

    .line 436
    :pswitch_5
    const-string v0, "VIP"

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method d()I
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->g()I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "position_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "position_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 220
    :cond_0
    return v0
.end method

.method d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    const-string v0, "INVALID"

    .line 462
    packed-switch p1, :pswitch_data_0

    .line 475
    :goto_0
    return-object v0

    .line 464
    :pswitch_0
    const-string v0, "MODAL"

    goto :goto_0

    .line 467
    :pswitch_1
    const-string v0, "TOAST"

    goto :goto_0

    .line 470
    :pswitch_2
    const-string v0, "NOT_SHOWN"

    goto :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method e()I
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->h()I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "animation_in_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "animation_in_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 228
    :cond_0
    return v0
.end method

.method e(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    const-string v0, "INVALID"

    .line 480
    packed-switch p1, :pswitch_data_0

    .line 514
    :goto_0
    return-object v0

    .line 482
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 485
    :pswitch_1
    const-string v0, "TOP_LEFT"

    goto :goto_0

    .line 488
    :pswitch_2
    const-string v0, "TOP_CENTER"

    goto :goto_0

    .line 491
    :pswitch_3
    const-string v0, "TOP_RIGHT"

    goto :goto_0

    .line 494
    :pswitch_4
    const-string v0, "BOTTOM_LEFT"

    goto :goto_0

    .line 497
    :pswitch_5
    const-string v0, "BOTTOM_CENTER"

    goto :goto_0

    .line 500
    :pswitch_6
    const-string v0, "BOTTOM_RIGHT"

    goto :goto_0

    .line 503
    :pswitch_7
    const-string v0, "CENTER_LEFT"

    goto :goto_0

    .line 506
    :pswitch_8
    const-string v0, "CENTER"

    goto :goto_0

    .line 509
    :pswitch_9
    const-string v0, "CENTER_RIGHT"

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method f()I
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->b()I

    move-result v0

    .line 233
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "duration_animation_in_ms"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "duration_animation_in_ms"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 236
    :cond_0
    return v0
.end method

.method f(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    const-string v0, ""

    .line 519
    sparse-switch p1, :sswitch_data_0

    .line 540
    :goto_0
    return-object v0

    .line 521
    :sswitch_0
    const-string v0, "SLIDE_DOWN"

    goto :goto_0

    .line 524
    :sswitch_1
    const-string v0, "SLIDE_RIGHT"

    goto :goto_0

    .line 527
    :sswitch_2
    const-string v0, "SLIDE_LEFT"

    goto :goto_0

    .line 530
    :sswitch_3
    const-string v0, "SLIDE_UP"

    goto :goto_0

    .line 533
    :sswitch_4
    const-string v0, "FADE"

    goto :goto_0

    .line 536
    :sswitch_5
    const-string v0, "NONE"

    goto :goto_0

    .line 519
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method g()I
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->i()I

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "animation_out_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "animation_out_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 244
    :cond_0
    return v0
.end method

.method g(I)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 567
    sparse-switch p1, :sswitch_data_0

    .line 579
    sget-object v0, Lcom/adcolony/sdk/cm;->o:Landroid/view/animation/TranslateAnimation;

    :goto_0
    return-object v0

    .line 569
    :sswitch_0
    sget-object v0, Lcom/adcolony/sdk/cm;->n:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 571
    :sswitch_1
    sget-object v0, Lcom/adcolony/sdk/cm;->l:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 573
    :sswitch_2
    sget-object v0, Lcom/adcolony/sdk/cm;->k:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 575
    :sswitch_3
    sget-object v0, Lcom/adcolony/sdk/cm;->m:Landroid/view/animation/TranslateAnimation;

    goto :goto_0

    .line 577
    :sswitch_4
    sget-object v0, Lcom/adcolony/sdk/cm;->S:Landroid/view/animation/AlphaAnimation;

    goto :goto_0

    .line 567
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method h()I
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->c()I

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "duration_animation_out_ms"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "duration_animation_out_ms"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 252
    :cond_0
    return v0
.end method

.method h(I)V
    .locals 0

    .prologue
    .line 623
    iput p1, p0, Lcom/adcolony/sdk/cm;->h:I

    .line 624
    return-void
.end method

.method i()I
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->f()I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "toast_default_width"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "toast_default_width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 260
    :cond_0
    return v0
.end method

.method j()I
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->e()I

    move-result v0

    .line 265
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "toast_default_height"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "toast_default_height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 268
    :cond_0
    return v0
.end method

.method k()I
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->t()I

    move-result v0

    .line 273
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "presentation_delay_ms"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "presentation_delay_ms"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 276
    :cond_0
    return v0
.end method

.method l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->q:Lcom/adcolony/sdk/bm;

    invoke-virtual {v0}, Lcom/adcolony/sdk/bm;->u()Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "modal_background_rgba"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "modal_background_rgba"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    :cond_0
    return-object v0
.end method

.method m()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "metadata"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "metadata"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 293
    :cond_0
    return-object v0
.end method

.method n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/cm;->i:Ljava/util/Map;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->i:Ljava/util/Map;

    return-object v0
.end method

.method o()I
    .locals 3

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 388
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "scaling_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "scaling_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 391
    :cond_0
    return v0
.end method

.method p()I
    .locals 3

    .prologue
    .line 410
    const/4 v0, -0x1

    .line 411
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "reward_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "reward_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 414
    :cond_0
    return v0
.end method

.method q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    const-string v0, ""

    .line 446
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "source_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "source_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    :cond_0
    return-object v0
.end method

.method r()I
    .locals 3

    .prologue
    .line 453
    const/4 v0, -0x1

    .line 454
    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v2, "display_type"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "display_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 457
    :cond_0
    return v0
.end method

.method s()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 545
    const-string v1, "time_to_click_ms"

    iget-wide v2, p0, Lcom/adcolony/sdk/cm;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "source_id"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v1, "duration_ms"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v1, "duration_animation_in_ms"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string v1, "duration_animation_out_ms"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v1, "height"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->p()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/cm;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v1, "display_type_s"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->r()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/cm;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v1, "position"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->d()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/cm;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string v1, "animation_in"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->e()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/cm;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v1, "animation_out"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->g()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/cm;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v1, "scaling"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->o()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/cm;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v1, "presentation_delay_ms"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v1, "modal_background_color_rgba"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v1, "slug"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->n()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v1, "metadata"

    invoke-virtual {p0}, Lcom/adcolony/sdk/cm;->m()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string v1, "close_method"

    iget-object v2, p0, Lcom/adcolony/sdk/cm;->a:Lcom/adcolony/sdk/cm$a;

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/cm;->a(Lcom/adcolony/sdk/cm$a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    return-object v0
.end method

.method t()Lcom/adcolony/sdk/cm$d;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->j:Lcom/adcolony/sdk/cm$d;

    return-object v0
.end method

.method u()J
    .locals 2

    .prologue
    .line 592
    iget-wide v0, p0, Lcom/adcolony/sdk/cm;->d:J

    return-wide v0
.end method

.method v()V
    .locals 6

    .prologue
    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 597
    iget-wide v2, p0, Lcom/adcolony/sdk/cm;->d:J

    iget-wide v4, p0, Lcom/adcolony/sdk/cm;->f:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adcolony/sdk/cm;->d:J

    .line 598
    return-void
.end method

.method w()V
    .locals 4

    .prologue
    .line 601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 602
    iget-wide v2, p0, Lcom/adcolony/sdk/cm;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/adcolony/sdk/cm;->c:J

    .line 603
    return-void
.end method

.method x()J
    .locals 2

    .prologue
    .line 606
    iget-wide v0, p0, Lcom/adcolony/sdk/cm;->c:J

    return-wide v0
.end method

.method y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "metadata"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "metadata"

    .line 612
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/adcolony/sdk/cm;->p:Ljava/util/Map;

    const-string v1, "metadata"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 614
    const-string v1, "messageId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "messageId"

    .line 615
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 616
    const-string v1, "messageId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 619
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method z()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/adcolony/sdk/cm;->g:Z

    return v0
.end method
