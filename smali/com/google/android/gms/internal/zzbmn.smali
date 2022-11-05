.class public Lcom/google/android/gms/internal/zzbmn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaiI:I
    .annotation runtime Lcom/google/android/gms/internal/zzbmb;
    .end annotation
.end field

.field private zzbDT:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "access_token"
    .end annotation
.end field

.field private zzbXW:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "refresh_token"
    .end annotation
.end field

.field private zzbYD:Ljava/lang/Long;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "expires_in"
    .end annotation
.end field

.field private zzbYE:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "token_type"
    .end annotation
.end field

.field private zzbYF:Ljava/lang/Long;
    .annotation runtime Lcom/google/android/gms/internal/zzbvf;
        value = "issued_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbmo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbmo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzaiI:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzbYF:Ljava/lang/Long;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmn;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmn;->zzbXW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmn;->zzbDT:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmn;->zzbYD:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbmn;->zzbYE:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbmn;->zzbYF:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzbDT:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzbYF:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbmn;->zzbYD:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbmo;->zza(Lcom/google/android/gms/internal/zzbmn;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzWc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzbXW:Ljava/lang/String;

    return-object v0
.end method

.method public zzWd()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzbYD:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzbYD:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public zzWe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzbYE:Ljava/lang/String;

    return-object v0
.end method

.method public zzWf()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzbYF:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public zziy(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmn;->zzbXW:Ljava/lang/String;

    return-void
.end method
