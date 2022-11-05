.class Lcom/adcolony/sdk/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final A:Ljava/lang/String; = "catalog_cross_fade_duration_ms"

.field static final B:I = 0x96

.field static final C:Ljava/lang/String; = "catalog_splash_fade_in_ms"

.field static final D:I = 0x32

.field static final E:Ljava/lang/String; = "catalog_over_status_bar"

.field static final F:Ljava/lang/String; = "update_stat_frequency_ms"

.field static final G:I

.field static final H:Ljava/lang/String; = "stat_save_frequency_ms"

.field static final I:I

.field static final J:Ljava/lang/String; = "update_promo_stat_frequency_ms"

.field static final K:I

.field static final L:Ljava/lang/String; = "session_resume_grace_period_ms"

.field static final M:I

.field static final N:Ljava/lang/String; = "reset_session_timer_ms"

.field static final O:I

.field static final P:Ljava/lang/String; = "reset_session_timer_after_exception_ms"

.field static final Q:I

.field static final R:Ljava/lang/String; = "require_payload_signature"

.field static final S:Z = true

.field static final T:Ljava/lang/String; = "use_ssl_pinning"

.field static final U:Z = false

.field static final V:Ljava/lang/String; = "update_event_frequency_ms"

.field static final W:I

.field static final X:Ljava/lang/String; = "update_stat_call_delay_ms"

.field static final Y:I

.field static final Z:Ljava/lang/String; = "persistent_storage_save_frequency_ms"

.field static final a:Ljava/lang/String; = "AdColonyPubServices"

.field static final aA:Z = false

.field static final aa:I

.field static final ab:Ljava/lang/String; = "flush_on_background"

.field static final ac:Z = false

.field static final ad:Ljava/lang/String; = "toast_presentation_delay_ms"

.field static final ae:I = 0x0

.field static final af:Ljava/lang/String; = "toast_modal_background_rgba"

.field static final ag:Ljava/lang/String; = "#00000000"

.field static final ah:Ljava/lang/String; = "modal_background_rgba"

.field static final ai:Ljava/lang/String; = "#00000000"

.field static final aj:Ljava/lang/String; = "log_batch_size"

.field static final ak:I = 0x19

.field static final al:Ljava/lang/String; = "stat_batch_size"

.field static final am:I = 0x19

.field static final an:Ljava/lang/String; = "server_request_timeout_ms"

.field static final ao:I

.field static final ap:Ljava/lang/String; = "webview_timeout_ms"

.field static final aq:I

.field static final ar:Ljava/lang/String; = "close_button_initial_fade_in_ms"

.field static final as:I = 0x5dc

.field static final at:Ljava/lang/String; = "persistence_limit_stat"

.field static final au:I = 0x3e8

.field static final av:Ljava/lang/String; = "persistence_limit_log"

.field static final aw:I = 0x3e8

.field static final ax:Ljava/lang/String; = "lock_fullscreen_view_orientation"

.field static final ay:Z = true

.field static final az:Ljava/lang/String; = "enable_swipe_to_dismiss"

.field static final b:Ljava/lang/String; = "endpoints"

.field static final c:Ljava/lang/String; = "signature"

.field static final d:Ljava/lang/String; = "version"

.field static final e:Ljava/lang/String; = "catalog_splash"

.field static final f:Ljava/lang/String; = "control_vars"

.field static final g:Ljava/lang/String; = "toast_default_width"

.field static final h:I = 0x140

.field static final i:Ljava/lang/String; = "toast_default_height"

.field static final j:I = 0x34

.field static final k:Ljava/lang/String; = "toast_default_duration_ms"

.field static final l:I

.field static final m:Ljava/lang/String; = "toast_animation_in_ms"

.field static final n:I = 0xc8

.field static final o:Ljava/lang/String; = "toast_animation_out_ms"

.field static final p:I = 0x64

.field static final q:Ljava/lang/String; = "toast_gap_delay_ms"

.field static final r:I = 0x1f4

.field static final s:Ljava/lang/String; = "animation_in_type"

.field static final t:I = 0x1

.field static final u:Ljava/lang/String; = "animation_out_type"

.field static final v:I = 0x8

.field static final w:Ljava/lang/String; = "position_type"

.field static final x:I = 0x2

.field static final y:Ljava/lang/String; = "catalog_border_padding"

.field static final z:I


# instance fields
.field aB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field aC:Ljava/util/Map;
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

.field aD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/16 v4, 0xa

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x5

    .line 23
    invoke-static {v3}, Lcom/adcolony/sdk/bm;->a(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->l:I

    .line 57
    invoke-static {v1}, Lcom/adcolony/sdk/bm;->b(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->G:I

    .line 60
    invoke-static {v4}, Lcom/adcolony/sdk/bm;->a(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->I:I

    .line 63
    invoke-static {v3}, Lcom/adcolony/sdk/bm;->a(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->K:I

    .line 66
    invoke-static {v1}, Lcom/adcolony/sdk/bm;->b(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->M:I

    .line 72
    invoke-static {v1}, Lcom/adcolony/sdk/bm;->b(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->O:I

    .line 75
    invoke-static {v4}, Lcom/adcolony/sdk/bm;->b(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->Q:I

    .line 84
    invoke-static {v1}, Lcom/adcolony/sdk/bm;->b(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->W:I

    .line 87
    invoke-static {v2}, Lcom/adcolony/sdk/bm;->b(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->Y:I

    .line 90
    invoke-static {v2}, Lcom/adcolony/sdk/bm;->a(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->aa:I

    .line 111
    invoke-static {v5}, Lcom/adcolony/sdk/bm;->a(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->ao:I

    .line 114
    invoke-static {v5}, Lcom/adcolony/sdk/bm;->a(I)I

    move-result v0

    sput v0, Lcom/adcolony/sdk/bm;->aq:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    .line 148
    return-void
.end method

.method static H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    const-string v0, "3.0.7"

    return-object v0
.end method

.method private I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method static final a(I)I
    .locals 1

    .prologue
    .line 135
    mul-int/lit16 v0, p0, 0x3e8

    return v0
.end method

.method static final b(I)I
    .locals 1

    .prologue
    .line 139
    mul-int/lit8 v0, p0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method A()I
    .locals 3

    .prologue
    .line 447
    sget v0, Lcom/adcolony/sdk/bm;->aq:I

    .line 448
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "webview_timeout_ms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "webview_timeout_ms"

    .line 449
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "webview_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 452
    :cond_0
    return v0
.end method

.method B()I
    .locals 3

    .prologue
    .line 457
    const/16 v0, 0x5dc

    .line 458
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "close_button_initial_fade_in_ms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "close_button_initial_fade_in_ms"

    .line 459
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "close_button_initial_fade_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 462
    :cond_0
    return v0
.end method

.method C()I
    .locals 3

    .prologue
    .line 466
    sget v0, Lcom/adcolony/sdk/bm;->aa:I

    .line 467
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "persistent_storage_save_frequency_ms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "persistent_storage_save_frequency_ms"

    .line 468
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "persistent_storage_save_frequency_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 471
    :cond_0
    return v0
.end method

.method D()I
    .locals 3

    .prologue
    .line 475
    const/16 v0, 0x3e8

    .line 476
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "persistence_limit_stat"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "persistence_limit_stat"

    .line 477
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "persistence_limit_stat"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 480
    :cond_0
    return v0
.end method

.method E()I
    .locals 3

    .prologue
    .line 484
    const/16 v0, 0x3e8

    .line 485
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "persistence_limit_log"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "persistence_limit_log"

    .line 486
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "persistence_limit_log"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 489
    :cond_0
    return v0
.end method

.method F()Z
    .locals 3

    .prologue
    .line 493
    const/4 v0, 0x1

    .line 494
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "lock_fullscreen_view_orientation"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "lock_fullscreen_view_orientation"

    .line 495
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "lock_fullscreen_view_orientation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 498
    :cond_0
    return v0
.end method

.method G()Z
    .locals 3

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 503
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "enable_swipe_to_dismiss"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "enable_swipe_to_dismiss"

    .line 504
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "enable_swipe_to_dismiss"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 507
    :cond_0
    return v0
.end method

.method a()I
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_default_duration_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_default_duration_ms"

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_default_duration_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 192
    :goto_0
    return v0

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default toast duration was returned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    sget v0, Lcom/adcolony/sdk/bm;->l:I

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 171
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    const-string v2, "endpoints"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    const-string v2, "endpoints"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No endpoints found"

    invoke-static {v0, v2, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    .line 182
    :goto_0
    return-object v0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    const-string v2, "endpoints"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 177
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_2
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing endpoint for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    .line 182
    goto :goto_0
.end method

.method a(Ljava/util/Map;)V
    .locals 2
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
    .line 162
    iput-object p1, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    .line 164
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    const-string v1, "control_vars"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    const-string v1, "control_vars"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    .line 167
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/adcolony/sdk/bm;->aD:Z

    .line 342
    return-void
.end method

.method b()I
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_animation_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_animation_in_ms"

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_animation_in_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 202
    :goto_0
    return v0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default animation in was returned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method c()I
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_animation_out_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_animation_out_ms"

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_animation_out_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 212
    :goto_0
    return v0

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default Animation out was returned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    const/16 v0, 0x64

    goto :goto_0
.end method

.method d()I
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_gap_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_gap_delay_ms"

    .line 217
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_gap_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 222
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default gap delay was returned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method e()I
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_default_height"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_default_height"

    .line 227
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_default_height"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 232
    :goto_0
    return v0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default toast height was returned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 232
    const/16 v0, 0x34

    goto :goto_0
.end method

.method f()I
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_default_width"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_default_width"

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_default_width"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 242
    :goto_0
    return v0

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default toast width was returned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 242
    const/16 v0, 0x140

    goto :goto_0
.end method

.method g()I
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "position_type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "position_type"

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "position_type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 252
    :goto_0
    return v0

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default toast position was returned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 252
    const/4 v0, 0x2

    goto :goto_0
.end method

.method h()I
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x1

    .line 257
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "animation_in_type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "animation_in_type"

    .line 258
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "animation_in_type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 261
    :cond_0
    return v0
.end method

.method i()I
    .locals 3

    .prologue
    .line 265
    const/16 v0, 0x8

    .line 266
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "animation_out_type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "animation_out_type"

    .line 267
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_animation_out_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 270
    :cond_0
    return v0
.end method

.method j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    const-string v1, "signature"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    const-string v1, "signature"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()I
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "update_stat_frequency_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "update_stat_frequency_ms"

    .line 282
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "update_stat_frequency_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    :goto_0
    return v0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default stat frequency was returned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 287
    sget v0, Lcom/adcolony/sdk/bm;->G:I

    goto :goto_0
.end method

.method l()I
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "update_promo_stat_frequency_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "update_promo_stat_frequency_ms"

    .line 292
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "update_promo_stat_frequency_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 297
    :goto_0
    return v0

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/adcolony/sdk/bm;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default promo stat freq was returned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    sget v0, Lcom/adcolony/sdk/bm;->K:I

    goto :goto_0
.end method

.method m()I
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aC:Ljava/util/Map;

    const-string v1, "version"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()I
    .locals 4

    .prologue
    .line 308
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aA()Lcom/adcolony/sdk/cj;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/adcolony/sdk/cj;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 311
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aA()Lcom/adcolony/sdk/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/cj;->h()J

    move-result-wide v0

    long-to-int v0, v0

    .line 320
    :goto_0
    return v0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "session_resume_grace_period_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "session_resume_grace_period_ms"

    .line 316
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "session_resume_grace_period_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 320
    :cond_1
    sget v0, Lcom/adcolony/sdk/bm;->M:I

    goto :goto_0
.end method

.method o()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    new-array v2, v4, [I

    sget v3, Lcom/adcolony/sdk/bm;->O:I

    aput v3, v2, v1

    sget v3, Lcom/adcolony/sdk/bm;->Q:I

    aput v3, v2, v0

    .line 326
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "reset_session_timer_ms"

    aput-object v4, v3, v1

    const-string v4, "reset_session_timer_after_exception_ms"

    aput-object v4, v3, v0

    .line 329
    iget-boolean v4, p0, Lcom/adcolony/sdk/bm;->aD:Z

    if-eqz v4, :cond_0

    .line 330
    :goto_0
    aget v1, v2, v0

    .line 331
    aget-object v0, v3, v0

    .line 332
    iget-object v2, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 337
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 329
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method p()I
    .locals 3

    .prologue
    .line 345
    sget v0, Lcom/adcolony/sdk/bm;->I:I

    .line 347
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "stat_save_frequency_ms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "stat_save_frequency_ms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "stat_save_frequency_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method q()I
    .locals 3

    .prologue
    .line 359
    sget v0, Lcom/adcolony/sdk/bm;->W:I

    .line 360
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "update_event_frequency_ms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "update_event_frequency_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 363
    :cond_0
    return v0
.end method

.method r()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 367
    .line 368
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "flush_on_background"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "flush_on_background"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 370
    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 372
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 370
    goto :goto_0
.end method

.method s()I
    .locals 3

    .prologue
    .line 376
    sget v0, Lcom/adcolony/sdk/bm;->Y:I

    .line 377
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "update_stat_call_delay_ms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "update_stat_call_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 380
    :cond_0
    return v0
.end method

.method t()I
    .locals 3

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 385
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "toast_presentation_delay_ms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "toast_presentation_delay_ms"

    .line 386
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_presentation_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 389
    :cond_0
    return v0
.end method

.method u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 393
    const-string v0, "#00000000"

    .line 394
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "toast_modal_background_rgba"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "toast_modal_background_rgba"

    .line 395
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "toast_modal_background_rgba"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    :cond_0
    return-object v0
.end method

.method v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 402
    const-string v0, "#00000000"

    .line 403
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "modal_background_rgba"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "modal_background_rgba"

    .line 404
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "modal_background_rgba"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    :cond_0
    return-object v0
.end method

.method w()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 411
    .line 412
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "require_payload_signature"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "require_payload_signature"

    .line 413
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "require_payload_signature"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    .line 416
    :cond_0
    return v1

    .line 414
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method x()I
    .locals 3

    .prologue
    .line 420
    const/16 v0, 0x19

    .line 421
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "log_batch_size"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "log_batch_size"

    .line 422
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "log_batch_size"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    :cond_0
    return v0
.end method

.method y()I
    .locals 3

    .prologue
    .line 429
    const/16 v0, 0x19

    .line 430
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "stat_batch_size"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "stat_batch_size"

    .line 431
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "stat_batch_size"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 434
    :cond_0
    return v0
.end method

.method z()I
    .locals 3

    .prologue
    .line 438
    sget v0, Lcom/adcolony/sdk/bm;->ao:I

    .line 439
    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "server_request_timeout_ms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v2, "server_request_timeout_ms"

    .line 440
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/adcolony/sdk/bm;->aB:Ljava/util/HashMap;

    const-string v1, "server_request_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 443
    :cond_0
    return v0
.end method
