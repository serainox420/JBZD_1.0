.class public Lcom/google/android/gms/wearable/internal/zzcy;
.super Lcom/google/android/gms/wearable/internal/zzbv$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/wearable/internal/zzbv$zza;"
    }
.end annotation


# instance fields
.field private final zzbUJ:[Landroid/content/IntentFilter;

.field private zzbVf:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzbVg:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzbVh:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzbVi:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzbVj:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzbVk:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzbVl:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzbVm:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbVn:Ljava/lang/String;


# direct methods
.method private constructor <init>([Landroid/content/IntentFilter;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/zzbv$zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbUJ:[Landroid/content/IntentFilter;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVn:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzabh;Ljava/lang/String;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzcy",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcy;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p2, v0}, Lcom/google/android/gms/wearable/internal/zzcy;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVl:Lcom/google/android/gms/internal/zzabh;

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzcy",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcy;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/internal/zzcy;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVh:Lcom/google/android/gms/internal/zzabh;

    return-object v1
.end method

.method private static zzas(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/internal/zzabh$zzc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")",
            "Lcom/google/android/gms/internal/zzabh$zzc",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcy$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzcy$1;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/wearable/internal/zzbz;)Lcom/google/android/gms/internal/zzabh$zzc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/internal/zzbz;",
            ")",
            "Lcom/google/android/gms/internal/zzabh$zzc",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcy$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzcy$2;-><init>(Lcom/google/android/gms/wearable/internal/zzbz;)V

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/wearable/internal/zzo;)Lcom/google/android/gms/internal/zzabh$zzc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/internal/zzo;",
            ")",
            "Lcom/google/android/gms/internal/zzabh$zzc",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcy$6;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzcy$6;-><init>(Lcom/google/android/gms/wearable/internal/zzo;)V

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/wearable/internal/zzs;)Lcom/google/android/gms/internal/zzabh$zzc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/internal/zzs;",
            ")",
            "Lcom/google/android/gms/internal/zzabh$zzc",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcy$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzcy$5;-><init>(Lcom/google/android/gms/wearable/internal/zzs;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzcy",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcy;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/internal/zzcy;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVi:Lcom/google/android/gms/internal/zzabh;

    return-object v1
.end method

.method private static zzc(Lcom/google/android/gms/wearable/internal/zzcc;)Lcom/google/android/gms/internal/zzabh$zzc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/internal/zzcc;",
            ")",
            "Lcom/google/android/gms/internal/zzabh$zzc",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcy$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzcy$3;-><init>(Lcom/google/android/gms/wearable/internal/zzcc;)V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzcy",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcy;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/internal/zzcy;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVj:Lcom/google/android/gms/internal/zzabh;

    return-object v1
.end method

.method private static zzd(Lcom/google/android/gms/wearable/internal/zzcc;)Lcom/google/android/gms/internal/zzabh$zzc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/internal/zzcc;",
            ")",
            "Lcom/google/android/gms/internal/zzabh$zzc",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcy$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzcy$4;-><init>(Lcom/google/android/gms/wearable/internal/zzcc;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzcy",
            "<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcy;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/internal/zzcy;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVl:Lcom/google/android/gms/internal/zzabh;

    return-object v1
.end method

.method public static zze(Lcom/google/android/gms/internal/zzabh;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/zzcy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;[",
            "Landroid/content/IntentFilter;",
            ")",
            "Lcom/google/android/gms/wearable/internal/zzcy",
            "<",
            "Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzcy;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/wearable/internal/zzcy;-><init>([Landroid/content/IntentFilter;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh;

    iput-object v0, v1, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVm:Lcom/google/android/gms/internal/zzabh;

    return-object v1
.end method

.method private static zzl(Lcom/google/android/gms/internal/zzabh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh",
            "<*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzabh;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzl(Lcom/google/android/gms/internal/zzabh;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVf:Lcom/google/android/gms/internal/zzabh;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzl(Lcom/google/android/gms/internal/zzabh;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVg:Lcom/google/android/gms/internal/zzabh;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVh:Lcom/google/android/gms/internal/zzabh;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzcy;->zzl(Lcom/google/android/gms/internal/zzabh;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVh:Lcom/google/android/gms/internal/zzabh;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVi:Lcom/google/android/gms/internal/zzabh;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzcy;->zzl(Lcom/google/android/gms/internal/zzabh;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVi:Lcom/google/android/gms/internal/zzabh;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVj:Lcom/google/android/gms/internal/zzabh;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzcy;->zzl(Lcom/google/android/gms/internal/zzabh;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVj:Lcom/google/android/gms/internal/zzabh;

    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzl(Lcom/google/android/gms/internal/zzabh;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVk:Lcom/google/android/gms/internal/zzabh;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVl:Lcom/google/android/gms/internal/zzabh;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzcy;->zzl(Lcom/google/android/gms/internal/zzabh;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVl:Lcom/google/android/gms/internal/zzabh;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVm:Lcom/google/android/gms/internal/zzabh;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzcy;->zzl(Lcom/google/android/gms/internal/zzabh;)V

    iput-object v1, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVm:Lcom/google/android/gms/internal/zzabh;

    return-void
.end method

.method public onConnectedNodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/internal/zzcc;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public zzUA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVn:Ljava/lang/String;

    return-object v0
.end method

.method public zzUz()[Landroid/content/IntentFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbUJ:[Landroid/content/IntentFilter;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzbz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVi:Lcom/google/android/gms/internal/zzabh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVi:Lcom/google/android/gms/internal/zzabh;

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzb(Lcom/google/android/gms/wearable/internal/zzbz;)Lcom/google/android/gms/internal/zzabh$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzcc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVj:Lcom/google/android/gms/internal/zzabh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVj:Lcom/google/android/gms/internal/zzabh;

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzc(Lcom/google/android/gms/wearable/internal/zzcc;)Lcom/google/android/gms/internal/zzabh$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzh;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzk;)V
    .locals 0

    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzo;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVm:Lcom/google/android/gms/internal/zzabh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVm:Lcom/google/android/gms/internal/zzabh;

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzb(Lcom/google/android/gms/wearable/internal/zzo;)Lcom/google/android/gms/internal/zzabh$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/wearable/internal/zzs;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVl:Lcom/google/android/gms/internal/zzabh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVl:Lcom/google/android/gms/internal/zzabh;

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzb(Lcom/google/android/gms/wearable/internal/zzs;)Lcom/google/android/gms/internal/zzabh$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    :cond_0
    return-void
.end method

.method public zzaq(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVh:Lcom/google/android/gms/internal/zzabh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVh:Lcom/google/android/gms/internal/zzabh;

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzas(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/internal/zzabh$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/wearable/internal/zzcc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVj:Lcom/google/android/gms/internal/zzabh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcy;->zzbVj:Lcom/google/android/gms/internal/zzabh;

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzcy;->zzd(Lcom/google/android/gms/wearable/internal/zzcc;)Lcom/google/android/gms/internal/zzabh$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh;->zza(Lcom/google/android/gms/internal/zzabh$zzc;)V

    :cond_0
    return-void
.end method
