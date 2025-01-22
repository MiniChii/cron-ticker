let times = 0;

const syncDB= () => {
  times++;
  console.log('tick', '\t', times, '\t', new Date());

  return times
};

module.exports ={
    syncDB
}
