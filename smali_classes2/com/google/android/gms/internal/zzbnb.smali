.class public Lcom/google/android/gms/internal/zzbnb;
.super Ljava/lang/Object;


# instance fields
.field private final zzaka:Ljava/lang/String;

.field private final zzbYQ:Ljava/lang/String;

.field private final zzbkP:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbmt;)V
    .locals 3

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzaka:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzbYQ:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PASSWORD_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzbkP:I

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWi()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzaka:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VERIFY_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzbkP:I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmt;->zzWj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RECOVER_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzbkP:I

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/google/android/gms/internal/zzbnb;->zzbkP:I

    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/google/android/gms/internal/zzbnb;->zzbkP:I

    goto :goto_1
.end method


# virtual methods
.method public getData(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzaka:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzbYQ:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getOperation()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbnb;->zzbkP:I

    return v0
.end method
