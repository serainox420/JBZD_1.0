.class public final Lcom/google/android/gms/internal/zzmk$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final zzKJ:Z

.field public final zzRB:Ljava/lang/String;

.field public final zzRC:Ljava/lang/String;

.field public final zzRD:Landroid/os/Bundle;

.field public final zzRE:I

.field public final zzRF:Landroid/os/Bundle;

.field public final zzRG:Z

.field public final zzRH:I

.field public final zzRI:I

.field public final zzRJ:Ljava/lang/String;

.field public final zzRK:J

.field public final zzRL:Ljava/lang/String;

.field public final zzRM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzRN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzRQ:Ljava/lang/String;

.field public final zzRR:F

.field public final zzRS:I

.field public final zzRT:I

.field public final zzRU:Z

.field public final zzRV:Z

.field public final zzRX:Z

.field public final zzRY:Ljava/lang/String;

.field public final zzRZ:I

.field public final zzRx:Landroid/os/Bundle;

.field public final zzRy:Lcom/google/android/gms/internal/zzec;

.field public final zzRz:Landroid/content/pm/PackageInfo;

.field public final zzSa:Landroid/os/Bundle;

.field public final zzSb:Ljava/lang/String;

.field public final zzSc:Z

.field public final zzSd:Landroid/os/Bundle;

.field public final zzSh:Z

.field public final zzSi:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzmr;",
            ">;"
        }
    .end annotation
.end field

.field public final zzSj:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzSk:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzvF:Lcom/google/android/gms/internal/zzhc;

.field public final zzvH:Lcom/google/android/gms/internal/zzfc;

.field public final zzvK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzvk:Ljava/lang/String;

.field public final zzvl:Ljava/lang/String;

.field public final zzvn:Lcom/google/android/gms/internal/zzqh;

.field public final zzvr:Lcom/google/android/gms/internal/zzeg;

.field public final zzxk:F


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzec;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;ZIIFLjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzhc;Ljava/util/concurrent/Future;Ljava/lang/String;FZIIZZLjava/util/concurrent/Future;Ljava/lang/String;ZILandroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/internal/zzfc;ZLandroid/os/Bundle;ZLjava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/google/android/gms/internal/zzec;",
            "Lcom/google/android/gms/internal/zzeg;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzqh;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "ZIIF",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzhc;",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzmr;",
            ">;",
            "Ljava/lang/String;",
            "FZIIZZ",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZI",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzfc;",
            "Z",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRx:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRy:Lcom/google/android/gms/internal/zzec;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzvr:Lcom/google/android/gms/internal/zzeg;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzvl:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzmk$zza;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRz:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRB:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRC:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRD:Landroid/os/Bundle;

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRG:Z

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRH:I

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRI:I

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzxk:F

    if-eqz p11, :cond_0

    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRE:I

    iput-object p11, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzvK:Ljava/util/List;

    iput-object p12, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRN:Ljava/util/List;

    :goto_0
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRF:Landroid/os/Bundle;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRJ:Ljava/lang/String;

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRK:J

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRL:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRM:Ljava/util/List;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzvk:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzvF:Lcom/google/android/gms/internal/zzhc;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzSi:Ljava/util/concurrent/Future;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRQ:Ljava/lang/String;

    move/from16 v0, p27

    iput v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRR:F

    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRX:Z

    move/from16 v0, p29

    iput v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRS:I

    move/from16 v0, p30

    iput v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRT:I

    move/from16 v0, p31

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRU:Z

    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRV:Z

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzSj:Ljava/util/concurrent/Future;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRY:Ljava/lang/String;

    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzKJ:Z

    move/from16 v0, p36

    iput v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRZ:I

    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzSa:Landroid/os/Bundle;

    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzSb:Ljava/lang/String;

    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzvH:Lcom/google/android/gms/internal/zzfc;

    move/from16 v0, p40

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzSc:Z

    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzSd:Landroid/os/Bundle;

    move/from16 v0, p42

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzSh:Z

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzSk:Ljava/util/concurrent/Future;

    return-void

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRE:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzvK:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzmk$zza;->zzRN:Ljava/util/List;

    goto :goto_0
.end method
