.class final Lcom/google/android/gms/wearable/internal/zzby$zza;
.super Lcom/google/android/gms/wearable/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzm",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private zzaDf:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzbUI:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

.field private zzbUJ:[Landroid/content/IntentFilter;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzm;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzbUI:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzaDf:Lcom/google/android/gms/internal/zzabh;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzbUJ:[Landroid/content/IntentFilter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;Lcom/google/android/gms/wearable/internal/zzby$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/wearable/internal/zzby$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzcx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzby$zza;->zza(Lcom/google/android/gms/wearable/internal/zzcx;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzcx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzbUI:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzaDf:Lcom/google/android/gms/internal/zzabh;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzbUJ:[Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzcx;->zza(Lcom/google/android/gms/internal/zzaad$zzb;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)V

    iput-object v3, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzbUI:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iput-object v3, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzaDf:Lcom/google/android/gms/internal/zzabh;

    iput-object v3, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzbUJ:[Landroid/content/IntentFilter;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzbUI:Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzaDf:Lcom/google/android/gms/internal/zzabh;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzbUJ:[Landroid/content/IntentFilter;

    return-object p1
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzby$zza;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
