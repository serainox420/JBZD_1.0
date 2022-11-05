.class public final Lcom/google/android/gms/internal/zzed;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzcV:Landroid/location/Location;

.field private zzsS:Z

.field private zzzj:J

.field private zzzk:I

.field private zzzl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzzm:Z

.field private zzzn:I

.field private zzzo:Ljava/lang/String;

.field private zzzp:Lcom/google/android/gms/internal/zzfp;

.field private zzzq:Ljava/lang/String;

.field private zzzr:Landroid/os/Bundle;

.field private zzzs:Landroid/os/Bundle;

.field private zzzt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzzu:Ljava/lang/String;

.field private zzzv:Ljava/lang/String;

.field private zzzw:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzed;->zzzj:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->mExtras:Landroid/os/Bundle;

    iput v4, p0, Lcom/google/android/gms/internal/zzed;->zzzk:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzl:Ljava/util/List;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzed;->zzzm:Z

    iput v4, p0, Lcom/google/android/gms/internal/zzed;->zzzn:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzed;->zzsS:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/zzed;->zzzo:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzed;->zzzp:Lcom/google/android/gms/internal/zzfp;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzed;->zzcV:Landroid/location/Location;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzed;->zzzq:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzr:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzs:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzt:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzed;->zzzu:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzed;->zzzv:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzed;->zzzw:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzec;->zzyT:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzed;->zzzj:J

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->mExtras:Landroid/os/Bundle;

    iget v0, p1, Lcom/google/android/gms/internal/zzec;->zzyU:I

    iput v0, p0, Lcom/google/android/gms/internal/zzed;->zzzk:I

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzl:Ljava/util/List;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzec;->zzyW:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzed;->zzzm:Z

    iget v0, p1, Lcom/google/android/gms/internal/zzec;->zzyX:I

    iput v0, p0, Lcom/google/android/gms/internal/zzed;->zzzn:I

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzec;->zzyY:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzed;->zzsS:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzyZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzo:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzp:Lcom/google/android/gms/internal/zzfp;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzcV:Landroid/location/Location;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzc:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzq:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzr:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzze:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzs:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzf:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzt:Ljava/util/List;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzu:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzec;->zzzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzed;->zzzv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Landroid/location/Location;)Lcom/google/android/gms/internal/zzed;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzed;->zzcV:Landroid/location/Location;

    return-object p0
.end method

.method public zzeC()Lcom/google/android/gms/internal/zzec;
    .locals 22

    new-instance v2, Lcom/google/android/gms/internal/zzec;

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/zzed;->zzzj:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzed;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/zzed;->zzzk:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzed;->zzzl:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/android/gms/internal/zzed;->zzzm:Z

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/gms/internal/zzed;->zzzn:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/gms/internal/zzed;->zzsS:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/zzed;->zzzo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzed;->zzzp:Lcom/google/android/gms/internal/zzfp;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/zzed;->zzcV:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/zzed;->zzzq:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzed;->zzzr:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzed;->zzzs:Landroid/os/Bundle;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzed;->zzzt:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzed;->zzzu:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzed;->zzzv:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzec;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzfp;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method
