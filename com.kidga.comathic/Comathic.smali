.class public Lcom/kidga/comathic/Comathic;
.super Lcom/kidga/common/KidgaActivity;
.source "Comathic.java"

# interfaces
.implements Lcom/kidga/common/move/MoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidga/comathic/Comathic$BoardAdapter;
    }
.end annotation


# static fields
.field static final GAME_NAME:Ljava/lang/String; = "comathic"

.field static final MY_AD_UNIT_ID:Ljava/lang/String; = "a14e079704cd453"


# instance fields
.field adapter:Lcom/kidga/comathic/Comathic$BoardAdapter;

.field private board:Lcom/kidga/common/ui/Board;

.field combo:I

.field private currentDestroy:I

.field private elemsTypesCount:I

.field private game:Lcom/kidga/common/Game;

.field public gameMode:I

.field hints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kidga/common/ui/Cell;",
            ">;"
        }
    .end annotation
.end field

.field public l:Landroid/widget/LinearLayout;

.field public levelColor:I

.field private levelTypeView:Landroid/widget/ImageView;

.field private levelView:Landroid/widget/TextView;

.field public posColor:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private removedCounter:I

.field private resHandler:Lcom/kidga/comathic/ResourceHandler;

.field private scoreFlipper:Lcom/kidga/common/score/ScorePlaceFlipper;

.field private scoreLayout:Landroid/widget/LinearLayout;

.field public size:I

.field stored:Lcom/kidga/common/ui/Cell;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/kidga/common/KidgaActivity;-><init>()V

    .line 38
    const/4 v0, 0x6

    iput v0, p0, Lcom/kidga/comathic/Comathic;->size:I

    .line 40
    const/16 v0, -0x100

    iput v0, p0, Lcom/kidga/comathic/Comathic;->levelColor:I

    .line 41
    const v0, -0xff0100

    iput v0, p0, Lcom/kidga/comathic/Comathic;->posColor:I

    .line 42
    const/16 v0, 0x64

    iput v0, p0, Lcom/kidga/comathic/Comathic;->gameMode:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/kidga/comathic/Comathic;->elemsTypesCount:I

    .line 52
    iput-object v1, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    .line 54
    new-instance v0, Lcom/kidga/common/Game;

    invoke-direct {v0, p0}, Lcom/kidga/common/Game;-><init>(Lcom/kidga/common/IGameHandler;)V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Lcom/kidga/comathic/Comathic;->combo:I

    .line 397
    const/4 v0, 0x2

    iput v0, p0, Lcom/kidga/comathic/Comathic;->currentDestroy:I

    .line 602
    iput-object v1, p0, Lcom/kidga/comathic/Comathic;->hints:Ljava/util/ArrayList;

    .line 721
    iput-object v1, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/kidga/comathic/Comathic;)Lcom/kidga/common/saves/SavesHandler;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kidga/comathic/Comathic;I)V
    .registers 2

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/kidga/comathic/Comathic;->showInfoDialog(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/kidga/comathic/Comathic;)Lcom/kidga/common/ui/Board;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kidga/comathic/Comathic;)Lcom/kidga/common/Game;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kidga/comathic/Comathic;)I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/kidga/comathic/Comathic;->removedCounter:I

    return v0
.end method

.method static synthetic access$5(Lcom/kidga/comathic/Comathic;I)V
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/kidga/comathic/Comathic;->removedCounter:I

    return-void
.end method

.method private checkForMaxTypeNearBonus(Lcom/kidga/common/ui/Cell;Lcom/kidga/common/ui/Cell;)Z
    .registers 9
    .param p1, "cell1"    # Lcom/kidga/common/ui/Cell;
    .param p2, "cell2"    # Lcom/kidga/common/ui/Cell;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 877
    instance-of v2, p1, Lcom/kidga/common/ui/CellSubElem;

    if-eqz v2, :cond_25

    move-object v2, p1

    check-cast v2, Lcom/kidga/common/ui/CellSubElem;

    invoke-virtual {v2}, Lcom/kidga/common/ui/CellSubElem;->getSubType()I

    move-result v0

    .line 878
    .local v0, "sub1":I
    :goto_d
    instance-of v2, p2, Lcom/kidga/common/ui/CellSubElem;

    if-eqz v2, :cond_27

    move-object v2, p2

    check-cast v2, Lcom/kidga/common/ui/CellSubElem;

    invoke-virtual {v2}, Lcom/kidga/common/ui/CellSubElem;->getSubType()I

    move-result v1

    .line 879
    .local v1, "sub2":I
    :goto_18
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v2

    sget-object v5, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-ne v2, v5, :cond_2b

    iget v2, p0, Lcom/kidga/comathic/Comathic;->currentDestroy:I

    if-ne v1, v2, :cond_29

    .line 881
    :cond_24
    :goto_24
    return v3

    .end local v0    # "sub1":I
    .end local v1    # "sub2":I
    :cond_25
    move v0, v3

    .line 877
    goto :goto_d

    .restart local v0    # "sub1":I
    :cond_27
    move v1, v3

    .line 878
    goto :goto_18

    .restart local v1    # "sub2":I
    :cond_29
    move v3, v4

    .line 879
    goto :goto_24

    .line 880
    :cond_2b
    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v2

    sget-object v5, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-ne v2, v5, :cond_39

    iget v2, p0, Lcom/kidga/comathic/Comathic;->currentDestroy:I

    if-eq v0, v2, :cond_24

    move v3, v4

    goto :goto_24

    :cond_39
    move v3, v4

    .line 881
    goto :goto_24
.end method

.method private disableCells(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kidga/common/ui/Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, "toDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 645
    return-void

    .line 641
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kidga/common/ui/Cell;

    .line 642
    .local v0, "c":Lcom/kidga/common/ui/Cell;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kidga/common/ui/Cell;->setDisabled(Z)V

    .line 643
    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v2

    iget v3, p0, Lcom/kidga/comathic/Comathic;->size:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v2

    iget v3, p0, Lcom/kidga/comathic/Comathic;->size:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->invalidate()V

    goto :goto_4
.end method

.method private enableCells(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kidga/common/ui/Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, "toEnable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    .line 652
    return-void

    .line 648
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kidga/common/ui/Cell;

    .line 649
    .local v0, "c":Lcom/kidga/common/ui/Cell;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kidga/common/ui/Cell;->setDisabled(Z)V

    goto :goto_4
.end method

.method private getAround(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;Lcom/kidga/common/ui/Type;I)Ljava/util/ArrayList;
    .registers 16
    .param p1, "cell"    # Lcom/kidga/common/ui/Cell;
    .param p3, "type"    # Lcom/kidga/common/ui/Type;
    .param p4, "subType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kidga/common/ui/Cell;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kidga/common/ui/Cell;",
            ">;",
            "Lcom/kidga/common/ui/Type;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kidga/common/ui/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "sol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 832
    if-nez p2, :cond_c

    .line 833
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "sol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .restart local p2    # "sol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_c
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v6

    if-lez v6, :cond_181

    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v9

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v10}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v1

    .line 838
    .local v1, "cellLeft":Lcom/kidga/common/ui/Cell;
    :goto_22
    instance-of v6, v1, Lcom/kidga/common/ui/CellSubElem;

    if-eqz v6, :cond_184

    move-object v6, v1

    check-cast v6, Lcom/kidga/common/ui/CellSubElem;

    invoke-virtual {v6}, Lcom/kidga/common/ui/CellSubElem;->getSubType()I

    move-result v4

    .line 839
    .local v4, "elSubType":I
    :goto_2d
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    if-ne v6, p3, :cond_37

    if-eq v4, p4, :cond_4d

    .line 840
    :cond_37
    invoke-virtual {v1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v9, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-eq v6, v9, :cond_47

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v9, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-ne v6, v9, :cond_62

    :cond_47
    invoke-direct {p0, p1, v1}, Lcom/kidga/comathic/Comathic;->checkForMaxTypeNearBonus(Lcom/kidga/common/ui/Cell;Lcom/kidga/common/ui/Cell;)Z

    move-result v6

    if-nez v6, :cond_62

    .line 841
    :cond_4d
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    invoke-virtual {v1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v9, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-eq v6, v9, :cond_62

    .line 842
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/kidga/comathic/Comathic;->getAround(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;Lcom/kidga/common/ui/Type;I)Ljava/util/ArrayList;

    move-result-object p2

    .line 845
    :cond_62
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v6

    iget-object v9, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {v9}, Lcom/kidga/common/ui/Board;->getCols()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_187

    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v9

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v2

    .line 846
    .local v2, "cellRight":Lcom/kidga/common/ui/Cell;
    :goto_80
    instance-of v6, v2, Lcom/kidga/common/ui/CellSubElem;

    if-eqz v6, :cond_18a

    move-object v6, v2

    check-cast v6, Lcom/kidga/common/ui/CellSubElem;

    invoke-virtual {v6}, Lcom/kidga/common/ui/CellSubElem;->getSubType()I

    move-result v4

    .line 847
    :goto_8b
    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    if-ne v6, p3, :cond_95

    if-eq v4, p4, :cond_ab

    .line 848
    :cond_95
    invoke-virtual {v2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v9, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-eq v6, v9, :cond_a5

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v9, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-ne v6, v9, :cond_c0

    :cond_a5
    invoke-direct {p0, p1, v2}, Lcom/kidga/comathic/Comathic;->checkForMaxTypeNearBonus(Lcom/kidga/common/ui/Cell;Lcom/kidga/common/ui/Cell;)Z

    move-result v6

    if-nez v6, :cond_c0

    .line 849
    :cond_ab
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c0

    invoke-virtual {v2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v9, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-eq v6, v9, :cond_c0

    .line 850
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/kidga/comathic/Comathic;->getAround(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;Lcom/kidga/common/ui/Type;I)Ljava/util/ArrayList;

    move-result-object p2

    .line 853
    :cond_c0
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v6

    iget-object v9, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {v9}, Lcom/kidga/common/ui/Board;->getRows()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_18d

    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v3

    .line 854
    .local v3, "cellTop":Lcom/kidga/common/ui/Cell;
    :goto_de
    instance-of v6, v3, Lcom/kidga/common/ui/CellSubElem;

    if-eqz v6, :cond_190

    move-object v6, v3

    check-cast v6, Lcom/kidga/common/ui/CellSubElem;

    invoke-virtual {v6}, Lcom/kidga/common/ui/CellSubElem;->getSubType()I

    move-result v4

    .line 855
    :goto_e9
    if-eqz v3, :cond_11e

    invoke-virtual {v3}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    if-ne v6, p3, :cond_f3

    if-eq v4, p4, :cond_109

    .line 856
    :cond_f3
    invoke-virtual {v3}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v9, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-eq v6, v9, :cond_103

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v9, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-ne v6, v9, :cond_11e

    :cond_103
    invoke-direct {p0, p1, v3}, Lcom/kidga/comathic/Comathic;->checkForMaxTypeNearBonus(Lcom/kidga/common/ui/Cell;Lcom/kidga/common/ui/Cell;)Z

    move-result v6

    if-nez v6, :cond_11e

    .line 857
    :cond_109
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11e

    invoke-virtual {v3}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v9, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-eq v6, v9, :cond_11e

    .line 858
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/kidga/comathic/Comathic;->getAround(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;Lcom/kidga/common/ui/Type;I)Ljava/util/ArrayList;

    move-result-object p2

    .line 861
    :cond_11e
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v6

    if-lez v6, :cond_193

    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v9

    invoke-virtual {v6, v7, v9}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v0

    .line 862
    .local v0, "cellBottom":Lcom/kidga/common/ui/Cell;
    :goto_134
    instance-of v6, v0, Lcom/kidga/common/ui/CellSubElem;

    if-eqz v6, :cond_195

    move-object v6, v0

    check-cast v6, Lcom/kidga/common/ui/CellSubElem;

    invoke-virtual {v6}, Lcom/kidga/common/ui/CellSubElem;->getSubType()I

    move-result v4

    .line 863
    :goto_13f
    if-eqz v0, :cond_176

    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    if-ne v6, p3, :cond_149

    if-eq v4, p4, :cond_15f

    .line 864
    :cond_149
    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v7, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-eq v6, v7, :cond_159

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v7, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-ne v6, v7, :cond_176

    :cond_159
    invoke-direct {p0, p1, v0}, Lcom/kidga/comathic/Comathic;->checkForMaxTypeNearBonus(Lcom/kidga/common/ui/Cell;Lcom/kidga/common/ui/Cell;)Z

    move-result v6

    if-nez v6, :cond_176

    .line 865
    :cond_15f
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_176

    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v6

    sget-object v7, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-eq v6, v7, :cond_176

    if-ne v4, p4, :cond_176

    .line 866
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/kidga/comathic/Comathic;->getAround(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;Lcom/kidga/common/ui/Type;I)Ljava/util/ArrayList;

    move-result-object p2

    .line 870
    :cond_176
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 872
    .local v5, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/kidga/common/ui/Cell;>;"
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "sol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    invoke-direct {p2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 873
    .restart local p2    # "sol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    return-object p2

    .end local v0    # "cellBottom":Lcom/kidga/common/ui/Cell;
    .end local v1    # "cellLeft":Lcom/kidga/common/ui/Cell;
    .end local v2    # "cellRight":Lcom/kidga/common/ui/Cell;
    .end local v3    # "cellTop":Lcom/kidga/common/ui/Cell;
    .end local v4    # "elSubType":I
    .end local v5    # "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/kidga/common/ui/Cell;>;"
    :cond_181
    move-object v1, v7

    .line 837
    goto/16 :goto_22

    .restart local v1    # "cellLeft":Lcom/kidga/common/ui/Cell;
    :cond_184
    move v4, v8

    .line 838
    goto/16 :goto_2d

    .restart local v4    # "elSubType":I
    :cond_187
    move-object v2, v7

    .line 845
    goto/16 :goto_80

    .restart local v2    # "cellRight":Lcom/kidga/common/ui/Cell;
    :cond_18a
    move v4, v8

    .line 846
    goto/16 :goto_8b

    :cond_18d
    move-object v3, v7

    .line 853
    goto/16 :goto_de

    .restart local v3    # "cellTop":Lcom/kidga/common/ui/Cell;
    :cond_190
    move v4, v8

    .line 854
    goto/16 :goto_e9

    :cond_193
    move-object v0, v7

    .line 861
    goto :goto_134

    .restart local v0    # "cellBottom":Lcom/kidga/common/ui/Cell;
    :cond_195
    move v4, v8

    .line 862
    goto :goto_13f
.end method

.method private getBombSolutions(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "cell"    # Lcom/kidga/common/ui/Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kidga/common/ui/Cell;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kidga/common/ui/Cell;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kidga/common/ui/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    .local p2, "sol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    if-nez p2, :cond_7

    .line 785
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "sol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .restart local p2    # "sol":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    :cond_7
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_10
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v1

    iget-object v2, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {v2}, Lcom/kidga/common/ui/Board;->getRows()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9c

    .line 789
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v0

    .line 790
    .local v0, "c":Lcom/kidga/common/ui/Cell;
    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v1

    sget-object v2, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-ne v1, v2, :cond_179

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_179

    invoke-direct {p0, v0, p2}, Lcom/kidga/comathic/Comathic;->getBombSolutions(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 792
    :cond_40
    :goto_40
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v1

    iget-object v2, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {v2}, Lcom/kidga/common/ui/Board;->getCols()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_72

    .line 793
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v1

    sget-object v2, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-ne v1, v2, :cond_184

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_184

    invoke-direct {p0, v0, p2}, Lcom/kidga/comathic/Comathic;->getBombSolutions(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 797
    :cond_72
    :goto_72
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v1

    if-lez v1, :cond_9c

    .line 798
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v1

    sget-object v2, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-ne v1, v2, :cond_18f

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18f

    invoke-direct {p0, v0, p2}, Lcom/kidga/comathic/Comathic;->getBombSolutions(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 803
    .end local v0    # "c":Lcom/kidga/common/ui/Cell;
    :cond_9c
    :goto_9c
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v1

    if-lez v1, :cond_120

    .line 804
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v0

    .line 805
    .restart local v0    # "c":Lcom/kidga/common/ui/Cell;
    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v1

    sget-object v2, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-ne v1, v2, :cond_19a

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19a

    invoke-direct {p0, v0, p2}, Lcom/kidga/comathic/Comathic;->getBombSolutions(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 807
    :cond_c4
    :goto_c4
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v1

    iget-object v2, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {v2}, Lcom/kidga/common/ui/Board;->getCols()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_f6

    .line 808
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v1

    sget-object v2, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-ne v1, v2, :cond_1a5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a5

    invoke-direct {p0, v0, p2}, Lcom/kidga/comathic/Comathic;->getBombSolutions(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 812
    :cond_f6
    :goto_f6
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v1

    if-lez v1, :cond_120

    .line 813
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v1

    sget-object v2, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-ne v1, v2, :cond_1b0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b0

    invoke-direct {p0, v0, p2}, Lcom/kidga/comathic/Comathic;->getBombSolutions(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 818
    .end local v0    # "c":Lcom/kidga/common/ui/Cell;
    :cond_120
    :goto_120
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v1

    iget-object v2, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {v2}, Lcom/kidga/common/ui/Board;->getCols()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_150

    .line 819
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v0

    .line 820
    .restart local v0    # "c":Lcom/kidga/common/ui/Cell;
    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v1

    sget-object v2, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-ne v1, v2, :cond_1bb

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bb

    invoke-direct {p0, v0, p2}, Lcom/kidga/comathic/Comathic;->getBombSolutions(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 823
    .end local v0    # "c":Lcom/kidga/common/ui/Cell;
    :cond_150
    :goto_150
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v1

    if-lez v1, :cond_178

    .line 824
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v0

    .line 825
    .restart local v0    # "c":Lcom/kidga/common/ui/Cell;
    invoke-virtual {v0}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v1

    sget-object v2, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-ne v1, v2, :cond_1c5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c5

    invoke-direct {p0, v0, p2}, Lcom/kidga/comathic/Comathic;->getBombSolutions(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 828
    .end local v0    # "c":Lcom/kidga/common/ui/Cell;
    :cond_178
    :goto_178
    return-object p2

    .line 791
    .restart local v0    # "c":Lcom/kidga/common/ui/Cell;
    :cond_179
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_40

    .line 795
    :cond_184
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    .line 800
    :cond_18f
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9c

    .line 806
    :cond_19a
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c4

    .line 810
    :cond_1a5
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f6

    .line 815
    :cond_1b0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_120

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_120

    .line 821
    :cond_1bb
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_150

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_150

    .line 826
    :cond_1c5
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_178

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_178
.end method

.method private initCommonUtils()V
    .registers 3

    .prologue
    .line 140
    new-instance v0, Lcom/kidga/comathic/ResourceHandler;

    invoke-direct {v0, p0}, Lcom/kidga/comathic/ResourceHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->resHandler:Lcom/kidga/comathic/ResourceHandler;

    .line 141
    const-string v0, "comathic"

    invoke-static {p0, v0}, Lcom/kidga/common/activity/DataProvider;->initInstance(Lcom/kidga/common/ICommonHandler;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/kidga/common/sound/SoundManager;->getInstance()Lcom/kidga/common/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kidga/common/sound/SoundManager;->init(Lcom/kidga/common/IGameHandler;)V

    .line 143
    invoke-static {}, Lcom/kidga/common/vibro/VibroManager;->getInstance()Lcom/kidga/common/vibro/VibroManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kidga/common/vibro/VibroManager;->init(Lcom/kidga/common/ICommonHandler;)V

    .line 144
    new-instance v0, Lcom/kidga/common/saves/SavesHandler;

    const-string v1, "comathic"

    invoke-direct {v0, p0, v1}, Lcom/kidga/common/saves/SavesHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    .line 145
    new-instance v0, Lcom/kidga/common/record/RecordHandler;

    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    invoke-direct {v0, v1}, Lcom/kidga/common/record/RecordHandler;-><init>(Lcom/kidga/common/saves/SavesHandler;)V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->recordHandler:Lcom/kidga/common/record/RecordHandler;

    .line 146
    new-instance v0, Lcom/kidga/common/ad/AdHandler;

    const-string v1, "a14e079704cd453"

    invoke-direct {v0, p0, v1}, Lcom/kidga/common/ad/AdHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->adHandler:Lcom/kidga/common/ad/AdHandler;

    .line 147
    new-instance v0, Lcom/kidga/common/score/ScorePlaceFlipper;

    invoke-direct {v0}, Lcom/kidga/common/score/ScorePlaceFlipper;-><init>()V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->scoreFlipper:Lcom/kidga/common/score/ScorePlaceFlipper;

    .line 148
    return-void
.end method

.method private initGameField(I)V
    .registers 7
    .param p1, "dimension"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 184
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 187
    new-instance v0, Lcom/kidga/comathic/Comathic$2;

    invoke-direct {v0, p0, p0}, Lcom/kidga/comathic/Comathic$2;-><init>(Lcom/kidga/comathic/Comathic;Landroid/content/Context;)V

    .line 200
    .local v0, "a":Landroid/widget/GridView;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 202
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 204
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v1}, Lcom/kidga/common/Game;->fillBoard()V

    .line 205
    new-instance v1, Lcom/kidga/comathic/Comathic$BoardAdapter;

    iget-object v2, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-direct {v1, p0, v2}, Lcom/kidga/comathic/Comathic$BoardAdapter;-><init>(Lcom/kidga/comathic/Comathic;Lcom/kidga/common/ui/Board;)V

    iput-object v1, p0, Lcom/kidga/comathic/Comathic;->adapter:Lcom/kidga/comathic/Comathic$BoardAdapter;

    .line 206
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->adapter:Lcom/kidga/comathic/Comathic$BoardAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3a

    .line 208
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 211
    :cond_3a
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kidga/comathic/Comathic;->scoreLayout:Landroid/widget/LinearLayout;

    .line 212
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->scoreLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 213
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->scoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 214
    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->updateHeader()V

    .line 219
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->l:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kidga/comathic/Comathic;->scoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 226
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v1, v4}, Lcom/kidga/common/Game;->setBusy(Z)V

    .line 227
    invoke-virtual {p0, v4}, Lcom/kidga/comathic/Comathic;->checkSolutions(Z)Z

    .line 230
    return-void
.end method

.method private performCopyMove(Lcom/kidga/common/ui/Cell;Lcom/kidga/common/ui/Cell;)V
    .registers 6
    .param p1, "from"    # Lcom/kidga/common/ui/Cell;
    .param p2, "to"    # Lcom/kidga/common/ui/Cell;

    .prologue
    .line 917
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kidga/comathic/Comathic;->increaseLevelBar(I)Z

    .line 918
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v0, p1, p2}, Lcom/kidga/common/Game;->moveToSpec(Lcom/kidga/common/ui/Cell;Lcom/kidga/common/ui/Cell;)V

    .line 919
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v1}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kidga/common/Game;->addGameScore(I)V

    .line 920
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/kidga/comathic/Comathic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v2}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/kidga/common/popup/PopupManager;->showPopup(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 921
    invoke-direct {p0}, Lcom/kidga/comathic/Comathic;->updateScore()V

    .line 922
    return-void
.end method

.method private showInfoDialog(I)V
    .registers 9
    .param p1, "j"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 267
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-ne p1, v4, :cond_3d

    const v3, 0x7f070047

    :goto_d
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 270
    if-nez p1, :cond_47

    sget-object v2, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    .line 272
    .local v2, "type":Lcom/kidga/common/ui/Type;
    :goto_14
    if-nez p1, :cond_59

    const v3, 0x7f07001b

    .line 271
    :goto_19
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 273
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/kidga/comathic/Comathic;->getResource(Lcom/kidga/common/ui/Type;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 274
    const v4, 0x7f070024

    new-instance v5, Lcom/kidga/comathic/Comathic$3;

    invoke-direct {v5, p0}, Lcom/kidga/comathic/Comathic$3;-><init>(Lcom/kidga/comathic/Comathic;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 279
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 280
    return-void

    .line 268
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "type":Lcom/kidga/common/ui/Type;
    :cond_3d
    if-ne p1, v5, :cond_43

    const v3, 0x7f070046

    goto :goto_d

    :cond_43
    const v3, 0x7f07002d

    goto :goto_d

    .line 270
    :cond_47
    if-ne p1, v6, :cond_4c

    sget-object v2, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    goto :goto_14

    :cond_4c
    if-ne p1, v4, :cond_51

    sget-object v2, Lcom/kidga/common/ui/Type;->BONUS_3:Lcom/kidga/common/ui/Type;

    goto :goto_14

    :cond_51
    if-ne p1, v5, :cond_56

    sget-object v2, Lcom/kidga/common/ui/Type;->BONUS_4:Lcom/kidga/common/ui/Type;

    goto :goto_14

    :cond_56
    sget-object v2, Lcom/kidga/common/ui/Type;->BONUS_4:Lcom/kidga/common/ui/Type;

    goto :goto_14

    .line 272
    .restart local v2    # "type":Lcom/kidga/common/ui/Type;
    :cond_59
    if-ne p1, v6, :cond_5f

    const v3, 0x7f07001c

    goto :goto_19

    :cond_5f
    if-ne p1, v4, :cond_65

    const v3, 0x7f07001d

    goto :goto_19

    :cond_65
    if-ne p1, v5, :cond_6b

    .line 273
    const v3, 0x7f070014

    goto :goto_19

    :cond_6b
    const v3, 0x7f07001f

    goto :goto_19
.end method

.method private updateLevel()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 420
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 421
    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v3}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "levelStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->levelView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    return-void
.end method

.method private updateScore()V
    .registers 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->scoreFlipper:Lcom/kidga/common/score/ScorePlaceFlipper;

    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v1}, Lcom/kidga/common/Game;->getGameScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kidga/common/score/ScorePlaceFlipper;->updateScore(I)V

    .line 417
    return-void
.end method


# virtual methods
.method public activateBonusDone(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 690
    return-void
.end method

.method public calculateHint()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kidga/common/ui/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    .line 605
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v4, "maxhint":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/kidga/comathic/Comathic;->hints:Ljava/util/ArrayList;

    .line 607
    const/4 v3, 0x0

    .line 608
    .local v3, "hintvalue":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v5, "processed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v8, "toDisable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    const/4 v0, 0x0

    .local v0, "c1":I
    :goto_19
    iget-object v9, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {v9}, Lcom/kidga/common/ui/Board;->getCols()I

    move-result v9

    if-lt v0, v9, :cond_25

    .line 634
    invoke-direct {p0, v8}, Lcom/kidga/comathic/Comathic;->disableCells(Ljava/util/ArrayList;)V

    .line 637
    return-object v4

    .line 611
    :cond_25
    const/4 v6, 0x0

    .local v6, "r1":I
    :goto_26
    iget-object v9, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {v9}, Lcom/kidga/common/ui/Board;->getRows()I

    move-result v9

    if-lt v6, v9, :cond_31

    .line 610
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 612
    :cond_31
    iget-object v9, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {v9, v6, v0}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v1

    .line 613
    .local v1, "cell":Lcom/kidga/common/ui/Cell;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8b

    invoke-virtual {v1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v9

    sget-object v10, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-eq v9, v10, :cond_8b

    invoke-virtual {v1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v9

    sget-object v10, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-eq v9, v10, :cond_8b

    .line 614
    instance-of v9, v1, Lcom/kidga/common/ui/CellSubElem;

    if-eqz v9, :cond_83

    move-object v9, v1

    check-cast v9, Lcom/kidga/common/ui/CellSubElem;

    invoke-virtual {v9}, Lcom/kidga/common/ui/CellSubElem;->getSubType()I

    move-result v2

    .line 615
    .local v2, "elSubType":I
    :goto_58
    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v10

    invoke-direct {p0, v1, v9, v10, v2}, Lcom/kidga/comathic/Comathic;->getAround(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;Lcom/kidga/common/ui/Type;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 617
    .local v7, "sols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 618
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v3, :cond_77

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v11, :cond_77

    iget v9, p0, Lcom/kidga/comathic/Comathic;->currentDestroy:I

    if-ne v2, v9, :cond_77

    .line 620
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 623
    :cond_77
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v11, :cond_85

    .line 624
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 611
    .end local v2    # "elSubType":I
    .end local v7    # "sols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    :cond_80
    :goto_80
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 614
    :cond_83
    const/4 v2, 0x1

    goto :goto_58

    .line 626
    .restart local v2    # "elSubType":I
    .restart local v7    # "sols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    :cond_85
    iput-object v7, p0, Lcom/kidga/comathic/Comathic;->hints:Ljava/util/ArrayList;

    .line 627
    invoke-direct {p0, v7}, Lcom/kidga/comathic/Comathic;->enableCells(Ljava/util/ArrayList;)V

    goto :goto_80

    .line 629
    .end local v2    # "elSubType":I
    .end local v7    # "sols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    :cond_8b
    invoke-virtual {v1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v9

    sget-object v10, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-ne v9, v10, :cond_80

    .line 630
    iget-object v9, p0, Lcom/kidga/comathic/Comathic;->hints:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_80
.end method

.method public checkSolutions(Z)Z
    .registers 10
    .param p1, "addNew"    # Z

    .prologue
    const/4 v7, 0x0

    .line 401
    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->calculateHint()Ljava/util/ArrayList;

    move-result-object v0

    .line 403
    .local v0, "hint":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->notifyBoardAdater()V

    .line 404
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->hints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3d

    iget-object v2, p0, Lcom/kidga/comathic/Comathic;->recordHandler:Lcom/kidga/common/record/RecordHandler;

    .line 405
    const v3, 0x7f07000e

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v1}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    invoke-virtual {v1}, Lcom/kidga/common/saves/SavesHandler;->isAdRemoved()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "+"

    :goto_32
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/kidga/common/record/RecordHandler;->finishGame(IILcom/kidga/common/Game;Ljava/lang/String;)V

    .line 408
    :cond_3d
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4d

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kidga/comathic/Comathic;->destroyCells(Ljava/util/ArrayList;I)Z

    .line 412
    :goto_49
    return v7

    .line 406
    :cond_4a
    const-string v1, ""

    goto :goto_32

    .line 410
    :cond_4d
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v1, v7}, Lcom/kidga/common/Game;->setBusy(Z)V

    goto :goto_49
.end method

.method public destroyCells(Ljava/util/ArrayList;I)Z
    .registers 14
    .param p2, "sound"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kidga/common/ui/Cell;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "solutions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 524
    const/4 v4, 0x0

    .line 525
    .local v4, "score":I
    iput v9, p0, Lcom/kidga/comathic/Comathic;->removedCounter:I

    .line 526
    invoke-static {}, Lcom/kidga/common/sound/SoundManager;->getInstance()Lcom/kidga/common/sound/SoundManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/kidga/common/sound/SoundManager;->playSound(I)V

    .line 527
    invoke-static {}, Lcom/kidga/common/vibro/VibroManager;->getInstance()Lcom/kidga/common/vibro/VibroManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kidga/common/vibro/VibroManager;->vibrate()V

    .line 533
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kidga/common/ui/Cell;

    invoke-virtual {v7}, Lcom/kidga/common/ui/Cell;->getSize()I

    move-result v2

    .line 534
    .local v2, "cellSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_6e

    .line 573
    iget-object v7, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    iget v9, p0, Lcom/kidga/comathic/Comathic;->combo:I

    mul-int/2addr v9, v4

    invoke-virtual {v7, v9}, Lcom/kidga/common/Game;->addGameScore(I)V

    .line 574
    invoke-direct {p0}, Lcom/kidga/comathic/Comathic;->updateScore()V

    .line 575
    iget v7, p0, Lcom/kidga/comathic/Comathic;->combo:I

    if-le v7, v8, :cond_a5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "x"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/kidga/comathic/Comathic;->combo:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "addon":Ljava/lang/String;
    :goto_4a
    const v7, 0x7f090002

    invoke-virtual {p0, v7}, Lcom/kidga/comathic/Comathic;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "+"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v7, v9}, Lcom/kidga/common/popup/PopupManager;->showPopup2(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 578
    iget v7, p0, Lcom/kidga/comathic/Comathic;->combo:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/kidga/comathic/Comathic;->combo:I

    .line 579
    return v8

    .line 535
    .end local v1    # "addon":Ljava/lang/String;
    :cond_6e
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kidga/common/ui/Cell;

    .line 538
    .local v5, "toDelete":Lcom/kidga/common/ui/Cell;
    const v7, 0x10a0001

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 539
    .local v0, "a":Landroid/view/animation/Animation;
    const-wide/16 v9, 0x32

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 541
    new-instance v7, Lcom/kidga/comathic/Comathic$4;

    invoke-direct {v7, p0, v5, p1, v2}, Lcom/kidga/comathic/Comathic$4;-><init>(Lcom/kidga/comathic/Comathic;Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 568
    instance-of v7, v5, Lcom/kidga/common/ui/CellSubElem;

    if-eqz v7, :cond_a3

    move-object v7, v5

    check-cast v7, Lcom/kidga/common/ui/CellSubElem;

    invoke-virtual {v7}, Lcom/kidga/common/ui/CellSubElem;->getSubType()I

    move-result v6

    .line 569
    .local v6, "typeScore":I
    :goto_93
    invoke-virtual {v5, v0}, Lcom/kidga/common/ui/Cell;->startAnimation(Landroid/view/animation/Animation;)V

    .line 570
    iget-object v7, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v7}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v7

    add-int/2addr v7, v3

    add-int/2addr v7, v6

    add-int/2addr v4, v7

    .line 534
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e

    .end local v6    # "typeScore":I
    :cond_a3
    move v6, v8

    .line 568
    goto :goto_93

    .line 575
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v5    # "toDelete":Lcom/kidga/common/ui/Cell;
    :cond_a5
    const-string v1, ""

    goto :goto_4a
.end method

.method public endLevel()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 442
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v0}, Lcom/kidga/common/Game;->increaseTotalLevel()V

    .line 443
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v0}, Lcom/kidga/common/Game;->clearCurLevelGems()V

    .line 444
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v0}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v0

    if-eq v0, v2, :cond_27

    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v0}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v0}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_59

    .line 445
    :cond_27
    iget v0, p0, Lcom/kidga/comathic/Comathic;->currentDestroy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kidga/comathic/Comathic;->currentDestroy:I

    .line 446
    iget v0, p0, Lcom/kidga/comathic/Comathic;->currentDestroy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_62

    .line 447
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->levelTypeView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 453
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->levelTypeView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 454
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    invoke-virtual {v0}, Lcom/kidga/common/saves/SavesHandler;->isBonusOpen2()Z

    move-result v0

    if-nez v0, :cond_59

    .line 455
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kidga/common/saves/SavesHandler;->setBonusOpen2(Z)V

    .line 456
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kidga/comathic/Comathic;->showInfoDialog(I)V

    .line 487
    :cond_59
    invoke-direct {p0}, Lcom/kidga/comathic/Comathic;->updateLevel()V

    .line 488
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->adHandler:Lcom/kidga/common/ad/AdHandler;

    invoke-virtual {v0}, Lcom/kidga/common/ad/AdHandler;->reloadAd()V

    .line 489
    return-void

    .line 448
    :cond_62
    iget v0, p0, Lcom/kidga/comathic/Comathic;->currentDestroy:I

    if-ne v0, v2, :cond_77

    .line 449
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->levelTypeView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_42

    .line 450
    :cond_77
    iget v0, p0, Lcom/kidga/comathic/Comathic;->currentDestroy:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_42

    .line 451
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->levelTypeView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_42
.end method

.method public genRandomType()Lcom/kidga/common/ui/Type;
    .registers 15

    .prologue
    const/4 v13, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 657
    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v6}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v6

    const/4 v9, 0x2

    if-lt v6, v9, :cond_7f

    move v6, v7

    :goto_d
    iget-object v9, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v9}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v9

    const/4 v10, 0x7

    if-lt v9, v10, :cond_81

    move v9, v7

    :goto_17
    add-int/2addr v9, v6

    .line 658
    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v6}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v6

    const/16 v10, 0xc

    if-lt v6, v10, :cond_83

    move v6, v7

    .line 657
    :goto_23
    add-int/2addr v9, v6

    .line 658
    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v6}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v6

    const/16 v10, 0x11

    if-lt v6, v10, :cond_85

    move v6, v7

    .line 657
    :goto_2f
    add-int v0, v9, v6

    .line 659
    .local v0, "addonBalls":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    iget v6, p0, Lcom/kidga/comathic/Comathic;->elemsTypesCount:I

    add-int/2addr v6, v0

    int-to-double v11, v6

    mul-double/2addr v9, v11

    double-to-int v5, v9

    .line 663
    .local v5, "type":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    mul-double/2addr v9, v11

    double-to-int v3, v9

    .line 664
    .local v3, "bonusNum1":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v6}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    int-to-double v11, v6

    mul-double/2addr v9, v11

    double-to-int v4, v9

    .line 668
    .local v4, "bonusNum2":I
    if-ne v3, v7, :cond_87

    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v6}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v6

    if-lt v6, v13, :cond_87

    move v1, v7

    .line 669
    .local v1, "bonus1":Z
    :goto_5d
    if-ne v4, v13, :cond_89

    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v6}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v6

    const/16 v9, 0x8

    if-lt v6, v9, :cond_89

    move v2, v7

    .line 670
    .local v2, "bonus2":Z
    :goto_6a
    if-eqz v1, :cond_8b

    .line 671
    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    invoke-virtual {v6}, Lcom/kidga/common/saves/SavesHandler;->isBonusOpen0()Z

    move-result v6

    if-nez v6, :cond_7c

    .line 672
    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    invoke-virtual {v6, v7}, Lcom/kidga/common/saves/SavesHandler;->setBonusOpen0(Z)V

    .line 673
    invoke-direct {p0, v8}, Lcom/kidga/comathic/Comathic;->showInfoDialog(I)V

    .line 675
    :cond_7c
    sget-object v6, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    .line 686
    :goto_7e
    return-object v6

    .end local v0    # "addonBalls":I
    .end local v1    # "bonus1":Z
    .end local v2    # "bonus2":Z
    .end local v3    # "bonusNum1":I
    .end local v4    # "bonusNum2":I
    .end local v5    # "type":I
    :cond_7f
    move v6, v8

    .line 657
    goto :goto_d

    :cond_81
    move v9, v8

    goto :goto_17

    :cond_83
    move v6, v8

    .line 658
    goto :goto_23

    :cond_85
    move v6, v8

    goto :goto_2f

    .restart local v0    # "addonBalls":I
    .restart local v3    # "bonusNum1":I
    .restart local v4    # "bonusNum2":I
    .restart local v5    # "type":I
    :cond_87
    move v1, v8

    .line 668
    goto :goto_5d

    .restart local v1    # "bonus1":Z
    :cond_89
    move v2, v8

    .line 669
    goto :goto_6a

    .line 676
    .restart local v2    # "bonus2":Z
    :cond_8b
    if-eqz v2, :cond_a0

    .line 677
    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    invoke-virtual {v6}, Lcom/kidga/common/saves/SavesHandler;->isBonusOpen1()Z

    move-result v6

    if-nez v6, :cond_9d

    .line 678
    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    invoke-virtual {v6, v7}, Lcom/kidga/common/saves/SavesHandler;->setBonusOpen1(Z)V

    .line 679
    invoke-direct {p0, v7}, Lcom/kidga/comathic/Comathic;->showInfoDialog(I)V

    .line 681
    :cond_9d
    sget-object v6, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    goto :goto_7e

    .line 686
    :cond_a0
    invoke-static {v5}, Lcom/kidga/common/ui/TypeUtil;->getElemType(I)Lcom/kidga/common/ui/Type;

    move-result-object v6

    goto :goto_7e
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 493
    return-object p0
.end method

.method public getCurrentLevel()Lcom/kidga/common/level/Level;
    .registers 2

    .prologue
    .line 886
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextElems()I
    .registers 2

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public getResource(Lcom/kidga/common/ui/Type;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "type"    # Lcom/kidga/common/ui/Type;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->resHandler:Lcom/kidga/comathic/ResourceHandler;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kidga/comathic/ResourceHandler;

    invoke-direct {v0, p0}, Lcom/kidga/comathic/ResourceHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->resHandler:Lcom/kidga/comathic/ResourceHandler;

    .line 393
    :cond_b
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->resHandler:Lcom/kidga/comathic/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/kidga/comathic/ResourceHandler;->getResource(Lcom/kidga/common/ui/Type;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getResourceSpec(Lcom/kidga/common/ui/Type;I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "type"    # Lcom/kidga/common/ui/Type;
    .param p2, "subType"    # I

    .prologue
    .line 927
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->resHandler:Lcom/kidga/comathic/ResourceHandler;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kidga/comathic/ResourceHandler;

    invoke-direct {v0, p0}, Lcom/kidga/comathic/ResourceHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->resHandler:Lcom/kidga/comathic/ResourceHandler;

    .line 928
    :cond_b
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->resHandler:Lcom/kidga/comathic/ResourceHandler;

    invoke-virtual {v0, p1, p2}, Lcom/kidga/comathic/ResourceHandler;->getResourceSpec(Lcom/kidga/common/ui/Type;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSoundResource(Lcom/kidga/common/sound/SoundType;)I
    .registers 3
    .param p1, "type"    # Lcom/kidga/common/sound/SoundType;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->resHandler:Lcom/kidga/comathic/ResourceHandler;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kidga/comathic/ResourceHandler;

    invoke-direct {v0, p0}, Lcom/kidga/comathic/ResourceHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->resHandler:Lcom/kidga/comathic/ResourceHandler;

    .line 499
    :cond_b
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->resHandler:Lcom/kidga/comathic/ResourceHandler;

    invoke-virtual {v0, p1}, Lcom/kidga/comathic/ResourceHandler;->getSoundResource(Lcom/kidga/common/sound/SoundType;)I

    move-result v0

    return v0
.end method

.method protected increaseLevelBar(I)Z
    .registers 4
    .param p1, "num"    # I

    .prologue
    .line 426
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v1, p1}, Lcom/kidga/common/Game;->addCurLevelGems(I)V

    .line 429
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v1}, Lcom/kidga/common/Game;->getCurLevelGems()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/lit8 v0, v1, 0x1e

    .line 431
    .local v0, "newValue":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1f

    .line 432
    const/16 v0, 0x64

    .line 433
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 434
    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->endLevel()V

    .line 435
    const/4 v1, 0x1

    .line 438
    :goto_1e
    return v1

    .line 437
    :cond_1f
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 438
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public notifyBoardAdater()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->adapter:Lcom/kidga/comathic/Comathic$BoardAdapter;

    invoke-virtual {v0}, Lcom/kidga/comathic/Comathic$BoardAdapter;->notifyDataSetChanged()V

    .line 180
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 933
    invoke-super {p0, p1}, Lcom/kidga/common/KidgaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 934
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 72
    invoke-super {p0, p1}, Lcom/kidga/common/KidgaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/kidga/comathic/Comathic;->initCommonUtils()V

    .line 75
    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 77
    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 79
    const v5, 0x7f030002

    invoke-virtual {p0, v5}, Lcom/kidga/comathic/Comathic;->setContentView(I)V

    .line 81
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, p0, Lcom/kidga/comathic/Comathic;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 82
    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v6, p0, Lcom/kidga/comathic/Comathic;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    const v5, 0x7f090002

    invoke-virtual {p0, v5}, Lcom/kidga/comathic/Comathic;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/kidga/comathic/Comathic;->l:Landroid/widget/LinearLayout;

    .line 85
    iget-object v5, p0, Lcom/kidga/comathic/Comathic;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    iget-object v5, p0, Lcom/kidga/comathic/Comathic;->l:Landroid/widget/LinearLayout;

    const/16 v6, 0x70

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 88
    iget-object v5, p0, Lcom/kidga/comathic/Comathic;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x140

    if-lt v5, v6, :cond_5f

    .line 90
    const v5, 0x7f090003

    invoke-virtual {p0, v5}, Lcom/kidga/comathic/Comathic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 91
    .local v0, "adLayout":Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/kidga/comathic/Comathic;->adHandler:Lcom/kidga/common/ad/AdHandler;

    invoke-virtual {v5, v0}, Lcom/kidga/common/ad/AdHandler;->fillAdLayout(Landroid/widget/RelativeLayout;)V

    .line 94
    .end local v0    # "adLayout":Landroid/widget/RelativeLayout;
    :cond_5f
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/kidga/comathic/Comathic;->start(Z)V

    .line 96
    const v5, 0x7f090004

    invoke-virtual {p0, v5}, Lcom/kidga/comathic/Comathic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 97
    .local v2, "l2":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v1, "im":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    const/high16 v5, -0x1000000

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 101
    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    .line 100
    invoke-direct {v3, v7, v7}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v3, "lp":Landroid/widget/TableLayout$LayoutParams;
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const v5, 0x10a0001

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 111
    .local v4, "out":Landroid/view/animation/Animation;
    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 112
    new-instance v5, Lcom/kidga/comathic/Comathic$1;

    invoke-direct {v5, p0, v2}, Lcom/kidga/comathic/Comathic$1;-><init>(Lcom/kidga/comathic/Comathic;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 128
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_1c

    .line 161
    :goto_4
    return-object v0

    .line 155
    :pswitch_5
    new-instance v0, Landroid/app/Dialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 156
    .restart local v0    # "dialog":Landroid/app/Dialog;
    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 157
    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_4

    .line 153
    nop

    :pswitch_data_1c
    .packed-switch 0xc8
        :pswitch_5
    .end packed-switch
.end method

.method public performMove(ILcom/kidga/common/ui/Cell;)V
    .registers 10
    .param p1, "moveType"    # I
    .param p2, "cell"    # Lcom/kidga/common/ui/Cell;

    .prologue
    const/4 v4, 0x1

    .line 898
    iput v4, p0, Lcom/kidga/comathic/Comathic;->combo:I

    .line 899
    const/4 v2, 0x0

    .line 900
    .local v2, "toCell":Lcom/kidga/common/ui/Cell;
    const/4 v3, 0x4

    if-ne p1, v3, :cond_73

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v2

    .line 905
    :goto_17
    instance-of v3, p2, Lcom/kidga/common/ui/CellSubElem;

    if-eqz v3, :cond_ae

    move-object v3, p2

    check-cast v3, Lcom/kidga/common/ui/CellSubElem;

    invoke-virtual {v3}, Lcom/kidga/common/ui/CellSubElem;->getSubType()I

    move-result v0

    .line 906
    .local v0, "subType1":I
    :goto_22
    instance-of v3, v2, Lcom/kidga/common/ui/CellSubElem;

    if-eqz v3, :cond_b1

    move-object v3, v2

    check-cast v3, Lcom/kidga/common/ui/CellSubElem;

    invoke-virtual {v3}, Lcom/kidga/common/ui/CellSubElem;->getSubType()I

    move-result v1

    .line 907
    .local v1, "subType2":I
    :goto_2d
    invoke-direct {p0, p2, v2}, Lcom/kidga/comathic/Comathic;->checkForMaxTypeNearBonus(Lcom/kidga/common/ui/Cell;Lcom/kidga/common/ui/Cell;)Z

    move-result v3

    if-nez v3, :cond_72

    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v3

    sget-object v4, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-eq v3, v4, :cond_72

    invoke-virtual {v2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v3

    sget-object v4, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-eq v3, v4, :cond_72

    .line 908
    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v3

    invoke-virtual {v2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v4

    if-ne v3, v4, :cond_4f

    if-eq v0, v1, :cond_5f

    .line 909
    :cond_4f
    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v3

    sget-object v4, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-eq v3, v4, :cond_5f

    invoke-virtual {v2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v3

    sget-object v4, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-ne v3, v4, :cond_72

    .line 910
    :cond_5f
    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v3

    sget-object v4, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-ne v3, v4, :cond_6f

    invoke-virtual {v2}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v3

    sget-object v4, Lcom/kidga/common/ui/Type;->BONUS_0:Lcom/kidga/common/ui/Type;

    if-eq v3, v4, :cond_72

    .line 911
    :cond_6f
    invoke-direct {p0, p2, v2}, Lcom/kidga/comathic/Comathic;->performCopyMove(Lcom/kidga/common/ui/Cell;Lcom/kidga/common/ui/Cell;)V

    .line 913
    :cond_72
    return-void

    .line 901
    .end local v0    # "subType1":I
    .end local v1    # "subType2":I
    :cond_73
    const/4 v3, 0x3

    if-ne p1, v3, :cond_87

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v2

    goto :goto_17

    .line 902
    :cond_87
    const/4 v3, 0x2

    if-ne p1, v3, :cond_9c

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v5

    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v2

    goto/16 :goto_17

    .line 903
    :cond_9c
    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v5

    invoke-virtual {p2}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Lcom/kidga/common/ui/Board;->get(II)Lcom/kidga/common/ui/Cell;

    move-result-object v2

    goto/16 :goto_17

    :cond_ae
    move v0, v4

    .line 905
    goto/16 :goto_22

    .restart local v0    # "subType1":I
    :cond_b1
    move v1, v4

    .line 906
    goto/16 :goto_2d
.end method

.method public performTwoSelectAction(Lcom/kidga/common/ui/Cell;Lcom/kidga/common/ui/Cell;)Z
    .registers 4
    .param p1, "last"    # Lcom/kidga/common/ui/Cell;
    .param p2, "current"    # Lcom/kidga/common/ui/Cell;

    .prologue
    .line 510
    const/4 v0, 0x0

    return v0
.end method

.method public processSingleClickCancel()Z
    .registers 2

    .prologue
    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method public processSingleClickDown(Lcom/kidga/common/ui/Cell;)Z
    .registers 3
    .param p1, "cell"    # Lcom/kidga/common/ui/Cell;

    .prologue
    .line 716
    const/4 v0, 0x1

    return v0
.end method

.method public processSingleClickDown2(Lcom/kidga/common/ui/Cell;I)Z
    .registers 8
    .param p1, "cell"    # Lcom/kidga/common/ui/Cell;
    .param p2, "action"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 725
    if-nez p2, :cond_1e

    .line 726
    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getElementType()Lcom/kidga/common/ui/Type;

    move-result-object v2

    sget-object v3, Lcom/kidga/common/ui/Type;->BOMB:Lcom/kidga/common/ui/Type;

    if-ne v2, v3, :cond_1b

    .line 727
    iget-object v2, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v2, v1}, Lcom/kidga/common/Game;->setBusy(Z)V

    .line 728
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/kidga/comathic/Comathic;->getBombSolutions(Lcom/kidga/common/ui/Cell;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 729
    .local v0, "solutions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    invoke-virtual {p0, v0, v4}, Lcom/kidga/comathic/Comathic;->destroyCells(Ljava/util/ArrayList;I)Z

    .line 761
    .end local v0    # "solutions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kidga/common/ui/Cell;>;"
    :cond_1a
    :goto_1a
    return v1

    .line 734
    :cond_1b
    iput-object p1, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    goto :goto_1a

    .line 735
    :cond_1e
    if-ne p2, v4, :cond_1a

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    invoke-virtual {v3}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v3

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v4

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    invoke-virtual {v3}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v4

    if-eq v3, v4, :cond_1a

    .line 736
    :cond_3c
    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    invoke-virtual {v3}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v4

    if-le v3, v4, :cond_51

    .line 737
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    invoke-virtual {v1, v3}, Lcom/kidga/common/Game;->moveToLeft(Lcom/kidga/common/ui/Cell;)V

    move v1, v2

    .line 738
    goto :goto_1a

    .line 740
    :cond_51
    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    invoke-virtual {v3}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v3

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getCol()I

    move-result v4

    if-ge v3, v4, :cond_66

    .line 741
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    invoke-virtual {v1, v3}, Lcom/kidga/common/Game;->moveToRight(Lcom/kidga/common/ui/Cell;)V

    move v1, v2

    .line 742
    goto :goto_1a

    .line 744
    :cond_66
    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    invoke-virtual {v3}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v3

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v4

    if-le v3, v4, :cond_7b

    .line 745
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    invoke-virtual {v1, v3}, Lcom/kidga/common/Game;->moveToTop(Lcom/kidga/common/ui/Cell;)V

    move v1, v2

    .line 746
    goto :goto_1a

    .line 748
    :cond_7b
    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    invoke-virtual {v3}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v3

    invoke-virtual {p1}, Lcom/kidga/common/ui/Cell;->getRow()I

    move-result v4

    if-ge v3, v4, :cond_1a

    .line 749
    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    iget-object v3, p0, Lcom/kidga/comathic/Comathic;->stored:Lcom/kidga/common/ui/Cell;

    invoke-virtual {v1, v3}, Lcom/kidga/common/Game;->moveToBottom(Lcom/kidga/common/ui/Cell;)V

    move v1, v2

    .line 750
    goto :goto_1a
.end method

.method public processSingleClickUp()Z
    .registers 2

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public showRecords(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "gameType"    # Ljava/lang/String;
    .param p2, "forResult"    # Z

    .prologue
    .line 284
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->saves:Lcom/kidga/common/saves/SavesHandler;

    invoke-virtual {v0, p1}, Lcom/kidga/common/saves/SavesHandler;->setScoreTab(Ljava/lang/String;)V

    .line 285
    if-eqz p2, :cond_17

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 286
    const-class v2, Lcom/kidga/common/activity/base/SingleScoresTab;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    .line 285
    invoke-virtual {p0, v0, v1}, Lcom/kidga/comathic/Comathic;->startActivityForResult(Landroid/content/Intent;I)V

    .line 288
    :goto_16
    return-void

    .line 287
    :cond_17
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kidga/common/activity/base/SingleScoresTab;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/kidga/comathic/Comathic;->startActivity(Landroid/content/Intent;)V

    goto :goto_16
.end method

.method public skipTurn()V
    .registers 1

    .prologue
    .line 890
    return-void
.end method

.method public start(Z)V
    .registers 5
    .param p1, "restart"    # Z

    .prologue
    .line 166
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->adHandler:Lcom/kidga/common/ad/AdHandler;

    invoke-virtual {v0}, Lcom/kidga/common/ad/AdHandler;->reloadAd()V

    .line 167
    :cond_7
    new-instance v0, Lcom/kidga/common/Game;

    invoke-direct {v0, p0}, Lcom/kidga/common/Game;-><init>(Lcom/kidga/common/IGameHandler;)V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    .line 168
    new-instance v0, Lcom/kidga/common/ui/Board;

    iget v1, p0, Lcom/kidga/comathic/Comathic;->size:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/kidga/comathic/Comathic;->size:I

    invoke-direct {v0, v1, v2}, Lcom/kidga/common/ui/Board;-><init>(II)V

    iput-object v0, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    .line 169
    iget-object v0, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    iget-object v1, p0, Lcom/kidga/comathic/Comathic;->board:Lcom/kidga/common/ui/Board;

    invoke-virtual {v0, v1}, Lcom/kidga/common/Game;->initGame(Lcom/kidga/common/ui/Board;)V

    .line 170
    const/4 v0, 0x2

    iput v0, p0, Lcom/kidga/comathic/Comathic;->currentDestroy:I

    .line 171
    iget v0, p0, Lcom/kidga/comathic/Comathic;->size:I

    invoke-direct {p0, v0}, Lcom/kidga/comathic/Comathic;->initGameField(I)V

    .line 173
    return-void
.end method

.method public updateHeader()V
    .registers 16

    .prologue
    .line 291
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->scoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 292
    new-instance v9, Landroid/widget/TableLayout;

    invoke-direct {v9, p0}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 293
    .local v9, "table":Landroid/widget/TableLayout;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 294
    new-instance v7, Landroid/widget/TableRow;

    invoke-direct {v7, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 299
    .local v7, "r":Landroid/widget/TableRow;
    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Landroid/widget/TableRow;->setGravity(I)V

    .line 301
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->scoreFlipper:Lcom/kidga/common/score/ScorePlaceFlipper;

    iget-object v11, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v11}, Lcom/kidga/common/Game;->getGameScore()I

    move-result v11

    invoke-virtual {v10, v7, v11}, Lcom/kidga/common/score/ScorePlaceFlipper;->initScoreHeader(Landroid/widget/TableRow;I)V

    .line 303
    new-instance v10, Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    const v12, 0x1010078

    invoke-direct {v10, p0, v11, v12}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v10, p0, Lcom/kidga/comathic/Comathic;->progressBar:Landroid/widget/ProgressBar;

    .line 304
    const/16 v10, 0x8

    new-array v8, v10, [F

    fill-array-data v8, :array_13c

    .line 307
    .local v8, "roundedCorners":[F
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v10, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v8, v11, v12}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v5, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 309
    .local v5, "pgDrawable":Landroid/graphics/drawable/ShapeDrawable;
    const-string v0, "yellow"

    .line 310
    .local v0, "MyColor":Ljava/lang/String;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/16 v12, 0x23

    const/4 v13, 0x0

    const/16 v14, 0x19

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/ShapeDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 312
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v10, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v8, v11, v12}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 313
    .local v1, "backDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    const v11, -0x777778

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/16 v12, 0x23

    const/4 v13, 0x0

    const/16 v14, 0x19

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/ShapeDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 316
    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v10

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    new-instance v6, Landroid/graphics/drawable/ClipDrawable;

    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-direct {v6, v5, v10, v11}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 319
    .local v6, "progress":Landroid/graphics/drawable/ClipDrawable;
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-direct {v2, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 320
    .local v2, "layerlist":Landroid/graphics/drawable/LayerDrawable;
    const/4 v10, 0x0

    const/high16 v11, 0x1020000

    invoke-virtual {v2, v10, v11}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 321
    const/4 v10, 0x1

    const v11, 0x102000d

    invoke-virtual {v2, v10, v11}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 323
    const/4 v10, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/16 v13, 0x14

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 324
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->progressBar:Landroid/widget/ProgressBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 358
    new-instance v4, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    .line 362
    .local v4, "lp":Landroid/widget/TableLayout$LayoutParams;
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v4, Landroid/widget/TableLayout$LayoutParams;->weight:F

    .line 365
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->progressBar:Landroid/widget/ProgressBar;

    const/16 v11, 0x50

    const/16 v12, 0x8

    invoke-virtual {v7, v10, v11, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;II)V

    .line 367
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/kidga/comathic/Comathic;->levelView:Landroid/widget/TextView;

    .line 369
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->levelView:Landroid/widget/TextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 371
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->levelView:Landroid/widget/TextView;

    const/high16 v11, 0x41900000    # 18.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 372
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->levelView:Landroid/widget/TextView;

    iget v11, p0, Lcom/kidga/comathic/Comathic;->levelColor:I

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07002a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/kidga/comathic/Comathic;->game:Lcom/kidga/common/Game;

    invoke-virtual {v13}, Lcom/kidga/common/Game;->getLevelTotal()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "levelStr":Ljava/lang/String;
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->levelView:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->levelView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 379
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/kidga/comathic/Comathic;->levelTypeView:Landroid/widget/ImageView;

    .line 380
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->levelTypeView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kidga/comathic/Comathic;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020033

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->levelTypeView:Landroid/widget/ImageView;

    const/16 v11, 0x12

    const/16 v12, 0x12

    invoke-virtual {v7, v10, v11, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;II)V

    .line 383
    invoke-virtual {v9, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 384
    iget-object v10, p0, Lcom/kidga/comathic/Comathic;->scoreLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 386
    return-void

    .line 304
    :array_13c
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public updateProgress(I)V
    .registers 2
    .param p1, "elementType"    # I

    .prologue
    .line 893
    return-void
.end method
